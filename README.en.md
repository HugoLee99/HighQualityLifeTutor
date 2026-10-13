# High Quality Life Tutor

[中文说明](README.md) · [Chinese Skill](SKILL.zh-CN.md)

A private life-coaching Skill for daily planning, food and movement choices, behavior change, and evidence-based reflection. It keeps the useful ideas associated with the “thin-muscle,” “yellow-hair,” and result-oriented internet frameworks while removing survivorship bias, reckless risk-taking, manipulation, body anxiety, and ends-justify-the-means thinking.

## Principles

- **Thin-muscle principle:** favor functional health, consistency, and the minimum effective dose over high-maintenance performance.
- **Yellow-hair principle:** take a small reversible step before conditions are perfect; be active, not reckless.
- **Result principle:** judge plans by visible progress and preserved options while protecting health, integrity, legality, and affordable downside.

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

## Structure

```text
.
├── SKILL.md
├── SKILL.zh-CN.md
├── README.md
├── README.en.md
├── agents/openai.yaml
└── references/
    ├── action-and-decisions.md
    ├── daily-review.md
    ├── food-movement-recovery.md
    └── zh-CN/
```

`SKILL.md` is the canonical entrypoint. `SKILL.zh-CN.md` and `references/zh-CN/` provide the complete Chinese translation.

## Safety

This Skill does not diagnose illness or replace a physician, registered dietitian, therapist, or emergency service. It does not prescribe medication, alter prescribed treatment, or encourage unsafe restriction, purging, dehydration, stimulant misuse, or training through alarming symptoms.

## Example

```text
I woke at 7:30, finished a project draft in the morning, ate lunch too late, lost energy in the afternoon, scrolled for an hour, and walked for 20 minutes tonight. Review my day and set up tomorrow.
```

The review evaluates the day—not the person's worth.
