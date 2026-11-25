# Tamil — session context repo for Hemi

This repo is the persistent memory for Claude sessions working with Hemanth (Hemi).
Claude: read this file, then the files in `notes/`, at the start of every session.

## Who
- Hemanth Kumar Gopi ("Hemi"), MS Business Analytics at Suffolk University, Boston
- Professional cricketer (right-handed opener); aiming for a sports analytics career (NBA, MLB, NHL, NFL)
- GitHub: Hemanth-55 · LinkedIn: linkedin.com/in/hemanthkumargopi

## How to work with Hemi
- Explain in simple English or Chennai-style Tanglish, never pure Tamil
- Charts, websites, GitHub and other outputs: Apple-level quality. Minimal, clean, professional, easy to read at a glance
- Emails: draft them for his approval. Never send without his OK
- Never put secrets (API keys, passwords, tokens) in this repo

## Session routine
1. **Start:** read `notes/session-log.md` (latest entries first) and `notes/projects.md`
2. **During:** record decisions and important facts in the right `notes/` file
3. **End:** add a dated entry at the top of `notes/session-log.md` (what was done, decisions, next steps), then commit and push to `main`

## Workflow (how memory stays forever)
- **One repo per project.** Each repo carries its own memory: `CLAUDE.md` (rules) + `notes/` (log, backlog, decisions).
- **Sessions are disposable; the repo is permanent.** Any number of sessions (web chat, phone, terminal) can work on the same repo. Each one starts by reading the notes and ends by writing them back.
- **Never keep anything important only in a chat.** If it isn't committed and pushed, it doesn't exist.
- **Start:** "where were we" · **End:** "wrap up" (log, commit, `git pull --rebase`, push).
- **Cross-project facts** (who Hemi is, career, priorities) live here in Tamil-; **project facts** live in the project's repo. `notes/repos.md` lists every repo.
- **New repo:** `bash kit/install.sh <repo>` installs the same kit (skills, agents, hook, notes).

## Files
- `notes/repos.md`: registry of all project repos
- `agents/`: the instructions behind every Tamil agent (CEO, Mail & Calendar, Tutor, Portfolio, AI News, Job Hunter). When an agent changes, update its copy here.
- `kit/`: the memory kit installed into every repo
- `notes/session-log.md` — running log of sessions, newest first
- `notes/projects.md` — ongoing projects, links and status
- `notes/decisions.md` — lasting decisions and preferences

## Skills (`.claude/skills/`)
- `session-start`: pull, read the notes, brief Hemi
- `session-end`: write the log entry, update notes, commit + push
- `log-decision`: save a decision or project update into `notes/`

## Agents (`.claude/agents/`)
- `notes-keeper`: condenses and tidies `notes/` when it gets long
- `quality-reviewer`: Apple-bar review before anything is published

## Hook
- `.claude/settings.json` runs a SessionStart hook that prints the latest log and the projects table into context automatically
