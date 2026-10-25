# Offline package guide

Use the bundled PowerShell script to create a versioned offline package containing the license, provenance notice, package metadata, and SHA-256 checksums.

## Create a generic package

```powershell
.\scripts\build-offline-package.ps1
```

## Create a traceable recipient package

Use an opaque code that only you can map back to a recipient. Do not put a name, email address, phone number, social handle, or other direct identifier in the package.

```powershell
.\scripts\build-offline-package.ps1 -RecipientCode "R7K2M9"
```

The ZIP file is written to `dist/`. Its `PACKAGE-INFO.json` records the project version, official source, build time, and recipient code. `SHA256SUMS.txt` can be used to detect file changes.

## Distribution record

Keep a private record outside the public repository:

```text
Recipient code: R7K2M9
Delivered to: [private record]
Delivered on: YYYY-MM-DD
Package filename: [filename]
SHA-256 of ZIP: [hash]
```

Do not commit that private mapping to Git. A recipient code deters casual forwarding and helps trace a leaked package, but it cannot technically prevent copying.

## Verify a package

After extracting the ZIP in PowerShell:

```powershell
Get-Content .\SHA256SUMS.txt
Get-FileHash .\SKILL.md -Algorithm SHA256
```

Compare the calculated hash with the corresponding line in `SHA256SUMS.txt`.
