# Tamil

**My personal AI agent system, built on Claude: one hub, a team of specialist agents, and memory that never resets.**

| Agents | Project repos with memory | Paid APIs | Chats needed to remember anything |
|:-:|:-:|:-:|:-:|
| **6** | **7** | **0** | **0** |

## Why

AI chats forget everything when they end. Tamil keeps memory where it can't be lost: in GitHub. Every project lives in its own repository with its rules (`CLAUDE.md`) and its notes (log, backlog, decisions). Any Claude session, on my laptop, phone or the web, reads them when it starts and writes back when it ends.

## The agents

| Agent | What it does | Code |
|---|---|---|
| **Tamil CEO** | My Jarvis-style assistant. Understands the request and routes it to the right specialist | [`agents/tamil`](agents/tamil/SKILL.md) |
| **Mail & Calendar** | Triages Gmail and Outlook, drafts replies for my approval, schedules and reminds | [`agents/tamil-mail-calendar`](agents/tamil-mail-calendar/SKILL.md) |
| **Tutor** | Explains concepts in Tanglish, preps exams, guides assignments | [`agents/tamil-tutor`](agents/tamil-tutor/SKILL.md) |
| **Portfolio** | Idea → tested notebook → GitHub repo → website demo → résumé lines | [`agents/tamil-portfolio`](agents/tamil-portfolio/SKILL.md) |
| **AI News** | Verified 3-minute AI briefings, daily on WhatsApp | [`agents/tamil-ai-news`](agents/tamil-ai-news/SKILL.md) |
| **Job Hunter** | Finds verified sports-industry roles and tailors a one-page résumé for each | [`agents/tamil-job-hunter`](agents/tamil-job-hunter/SKILL.md) · [repo](https://github.com/Hemanth-55/Tamil---Job-Hunter-) |

## How memory works

| Rule | In practice |
|---|---|
| **One repo per project** | Each repo carries its own `CLAUDE.md` and `notes/`. See [`notes/repos.md`](notes/repos.md) |
| **Sessions are disposable, repos are permanent** | Many sessions can share one repo. They start with "where were we" and end with "wrap up" |
| **Pushed or it didn't happen** | "Wrap up" writes the log, pulls with rebase and pushes, so parallel sessions never overwrite each other |
| **Same kit everywhere** | [`kit/`](kit) holds the skills, agents, startup hook and notes. `bash kit/install.sh <repo>` adds them to a new repo |

## Repository structure

```
.
├── agents/       # the instructions behind every Tamil agent
├── kit/          # the memory kit installed into every project repo
├── notes/        # cross-project log, projects, decisions, repo registry
├── .claude/      # this hub's own skills, agents and startup hook
└── CLAUDE.md     # who I am and how to work with me
```

<sub>Hemanth Kumar Gopi · <a href="https://hemanthkumargopi.vercel.app">hemanthkumargopi.vercel.app</a> · Built with Claude</sub>
