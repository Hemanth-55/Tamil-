# Usage plan: keep Claude for thinking, move repeat work to free tools
_Researched 28 Nov 2026 for Hemi. Status: **proposal, waiting for Hemi's OK**. Nothing changed yet._

## Where Claude tokens go today (biggest first)
1. **Live application sessions** (browser clicking, screenshots): heaviest by far.
2. **Cric Secrets weekly report**: a scheduled task, Sundays, runs on Opus with ~17 connectors loaded.
3. Long multi-project chats (city builds, website, research) where context keeps growing.
4. Small repeat chores done by hand in chat: tracker updates, Applied Jobs list, city rebuilds, résumé/PDF builds.

Already free (no Claude): job scout (GitHub Actions, public repo), Tamil AI News (Actions, no LLM), security checks (Actions).

## Free options, ranked by savings
| # | Move | Free tool | Saves |
|---|---|---|---|
| 1 | Cric Secrets weekly report → script (data refresh, model scoreboard, board/commit summary) runs on Actions; Claude only for a short monthly strategy pass, on Sonnet with only GitHub connected | GitHub Actions (private repo: Free plan allowance ~2,000 min/month) | High |
| 2 | Applications: Claude writes the cover letter + an answer sheet once per role; Hemi pastes from `Application.md` and clicks Submit; Claude only joins for tricky forms | Python (build_cover.py, applied_list.py) | High |
| 3 | Session habits: one task per chat, start fresh chats, Sonnet/Haiku for routine, Opus only for hard thinking, fewer connectors on | — | Medium–High |
| 4 | Tracker, Applied Jobs.md, city rebuild, résumé PDFs → one local command each (`make` style) | Python on the Mac | Medium |
| 5 | Small AI text jobs (summaries, tagging, news blurbs) → free models | GitHub Models via GITHUB_TOKEN in Actions (rate-limited, prototyping tier), or Ollama on the MacBook (fully local) | Medium |

## What stays with Claude
Judgement and writing: cover letters, strategy, model design and review, website copy, approvals with Hemi.

## Limits and risks
- Private-repo Actions draw from the monthly allowance; public repos are free. Keep jobs short; no larger runners.
- GitHub Models free tier is rate-limited and meant for prototyping; quality below Claude. Don't send Cric Secrets confidential data to any third-party model; use Ollama (local) for that.
- Ollama needs Mac disk/RAM; small models only (e.g. 3–8B).
- No paid APIs, no scraping sites that forbid it (unchanged rule).

## Next steps (after Hemi says yes)
1. Rewrite the Cric Secrets weekly task: Actions workflow + monthly Sonnet review.
2. Add a `make apply NN` / `make tracker` / `make city` command set.
3. Try GitHub Models on the news "Advisor's Lens" line as a pilot.
