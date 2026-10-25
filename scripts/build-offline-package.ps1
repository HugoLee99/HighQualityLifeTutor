[CmdletBinding()]
param(
    [ValidatePattern('^[A-Za-z0-9._-]{1,64}$')]
    [string]$RecipientCode = 'public',

    [string]$OutputDirectory
)

$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')).Path
$versionPath = Join-Path $repoRoot 'VERSION'
$version = (Get-Content -LiteralPath $versionPath -Raw).Trim()

if ([string]::IsNullOrWhiteSpace($version)) {
    throw 'VERSION must not be empty.'
}

if ([string]::IsNullOrWhiteSpace($OutputDirectory)) {
    $OutputDirectory = Join-Path $repoRoot 'dist'
}

$outputPath = [System.IO.Path]::GetFullPath($OutputDirectory)
if ($outputPath -eq $repoRoot) {
    throw 'OutputDirectory must not be the repository root.'
}

New-Item -ItemType Directory -Path $outputPath -Force | Out-Null

$packageStem = "HighQualityLifeTutor-v$version-$RecipientCode"
$zipPath = Join-Path $outputPath "$packageStem.zip"
if (Test-Path -LiteralPath $zipPath) {
    throw "Package already exists: $zipPath"
}

$tempBase = [System.IO.Path]::GetFullPath([System.IO.Path]::GetTempPath())
$tempRoot = Join-Path $tempBase ("highqualitylife-" + [guid]::NewGuid().ToString('N'))
$stageRoot = Join-Path $tempRoot $packageStem

try {
    New-Item -ItemType Directory -Path $stageRoot -Force | Out-Null

    $files = @(
        'SKILL.md',
        'SKILL.zh-CN.md',
        'README.md',
        'README.en.md',
        'LICENSE.md',
        'NOTICE.md',
        'VERSION'
    )

    foreach ($relativePath in $files) {
        Copy-Item -LiteralPath (Join-Path $repoRoot $relativePath) -Destination (Join-Path $stageRoot $relativePath)
    }

    foreach ($directory in @('agents', 'references')) {
        Copy-Item -LiteralPath (Join-Path $repoRoot $directory) -Destination (Join-Path $stageRoot $directory) -Recurse
    }

    $packageId = "$version-$RecipientCode-" + [DateTime]::UtcNow.ToString('yyyyMMddTHHmmssZ')
    $packageInfo = [ordered]@{
        package_id = $packageId
        project = 'HighQualityLifeTutor'
        version = $version
        recipient_code = $RecipientCode
        built_at_utc = [DateTime]::UtcNow.ToString('o')
        official_source = 'https://github.com/HugoLee99/HighQualityLifeTutor'
        license = 'HighQualityLifeTutor Personal-Use License v1.0'
        redistribution = 'Not permitted without prior written permission.'
    }
    $packageInfo | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $stageRoot 'PACKAGE-INFO.json') -Encoding utf8

    $hashLines = Get-ChildItem -LiteralPath $stageRoot -File -Recurse |
        Sort-Object FullName |
        ForEach-Object {
            $relative = [System.IO.Path]::GetRelativePath($stageRoot, $_.FullName).Replace('\', '/')
            $hash = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
            "$hash  $relative"
        }
    $hashLines | Set-Content -LiteralPath (Join-Path $stageRoot 'SHA256SUMS.txt') -Encoding utf8

    Compress-Archive -LiteralPath $stageRoot -DestinationPath $zipPath -CompressionLevel Optimal
    $zipHash = (Get-FileHash -LiteralPath $zipPath -Algorithm SHA256).Hash.ToLowerInvariant()

    [pscustomobject]@{
        Package = $zipPath
        PackageId = $packageId
        Sha256 = $zipHash
    }
}
finally {
    $resolvedTempRoot = [System.IO.Path]::GetFullPath($tempRoot)
    if ($resolvedTempRoot.StartsWith($tempBase, [System.StringComparison]::OrdinalIgnoreCase) -and
        (Split-Path -Leaf $resolvedTempRoot).StartsWith('highqualitylife-')) {
        Remove-Item -LiteralPath $resolvedTempRoot -Recurse -Force -ErrorAction SilentlyContinue
    }
}
