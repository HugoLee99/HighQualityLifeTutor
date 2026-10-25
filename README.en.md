# Three-Lens High Quality Life Tutor

[中文说明](README.md) · [Chinese Skill](SKILL.zh-CN.md)

A private coaching Skill that responds in three recognizably different analytical voices: a reconstructed Justin Sun lens, an Alan Shao lens, and the “yellow-hair” action archetype. It resolves their disagreement into one safe, concrete, reviewable route.

These are style-informed simulations based on public material—not quotations, impersonations, endorsements, or predictions of what a real person would certainly say. “Yellow hair” is an archetype, not an identifiable individual.

> **Free personal use does not waive copyright.** Individuals may use the project for free, non-commercial purposes. Republishing files, renamed releases, offline-package forwarding, course bundling, commercial resale, and paid services require prior written permission. Share the [official repository](https://github.com/HugoLee99/HighQualityLifeTutor) instead of mirroring its contents. See [LICENSE.md](LICENSE.md).

## The three lenses

- **Justin Sun:** version, game board, map, odds, optionality, and bounded asymmetric experiments.
- **Alan Shao:** body state, real muscle, system fat, visible definition, recovery, and minimum sufficient capability.
- **Yellow hair:** honest desire, refusal of approval-seeking, direct contact with reality, clean rejection, and firm boundaries.

The voices are expressed through reasoning and sentence rhythm, not catchphrase spam. The coach names genuine conflict, then chooses the lens that should dominate the case.

## Default response

1. Reality brief
2. Justin Sun perspective
3. Alan Shao perspective
4. Yellow-hair perspective
5. Conflict and dominant lens
6. Integrated route with immediate action, seven-day experiment, body floor, stop condition, and review evidence
7. One reusable insight

## Capabilities

- Plan a day around one must-win outcome and a few health floors.
- Coach everyday food, movement, sleep, and recovery decisions.
- Turn procrastination or indecision into a safe first action.
- Convert messy notes into a structured end-of-day review.
- Review a week for recurring strengths, friction, and useful experiments.
- Create a minimum viable plan for disrupted days.

## Install

Clone this repository into the Codex skills directory:

```powershell
git clone https://github.com/HugoLee99/HighQualityLifeTutor.git "$HOME\.codex\skills\high-agency-life-coach"
```

If `CODEX_HOME` is configured:

```powershell
git clone https://github.com/HugoLee99/HighQualityLifeTutor.git "$env:CODEX_HOME\skills\high-agency-life-coach"
```

Start a new Codex session and invoke it explicitly:

```text
$high-agency-life-coach Help me review today and choose tomorrow's most valuable adjustment.
```

Natural-language requests can also trigger the skill automatically.

## No-code quick start

Open [`SKILL.zh-CN.md`](SKILL.zh-CN.md) or `SKILL.md`, copy the contents into a model that supports long text, and ask it to treat the text as the rules for the current conversation. Some models can read the [raw Chinese file](https://raw.githubusercontent.com/HugoLee99/HighQualityLifeTutor/main/SKILL.zh-CN.md) directly; if link access fails, paste the file contents. Results vary by model.

## Structure

```text
.
├── SKILL.md
├── SKILL.zh-CN.md
├── README.md
├── README.en.md
├── LICENSE.md
├── NOTICE.md
├── DISTRIBUTION.md
├── VERSION
├── agents/openai.yaml
├── scripts/build-offline-package.ps1
└── references/
    ├── action-and-decisions.md
    ├── daily-review.md
    ├── food-movement-recovery.md
    ├── persona-lenses.md
    ├── provenance.md
    └── zh-CN/
```

`SKILL.md` is the canonical entrypoint. `SKILL.zh-CN.md` and `references/zh-CN/` provide the complete Chinese translation.

## License and offline distribution

This project is source-available under the [HighQualityLifeTutor Personal-Use License v1.0](LICENSE.md), not an open-source license. Personal non-commercial use is free; redistribution, derivative publication, organizational use, and commercial exploitation require written permission.

The offline-package script produces a ZIP containing package metadata, the license, provenance notice, and SHA-256 checksums. An optional opaque recipient code can help trace casual forwarding without placing personal information in the package. See [DISTRIBUTION.md](DISTRIBUTION.md).

## Safety

This Skill does not diagnose illness or replace a physician, registered dietitian, therapist, or emergency service. It does not prescribe medication, alter prescribed treatment, or encourage unsafe restriction, purging, dehydration, stimulant misuse, or training through alarming symptoms.

## Example

```text
I woke at 7:30, finished a project draft in the morning, ate lunch too late, lost energy in the afternoon, scrolled for an hour, and walked for 20 minutes tonight. Review my day and set up tomorrow.
```

The review evaluates the day—not the person's worth.
