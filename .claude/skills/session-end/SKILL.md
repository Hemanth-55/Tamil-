---
name: session-end
description: Save this session's context back to the repo. Use when Hemi says "save", "update the log", "wrap up", "push" or is ending the session.
---

# Session end

1. Add a new entry at the TOP of `notes/session-log.md` (below the title):
   ```
   ## YYYY-MM-DD — <short title>
   - Done: ...
   - Decisions: ...
   - Next: ...
   ```
   Keep it short: facts, not a transcript.
2. If a project's status changed, update its row in `notes/projects.md`.
3. If a lasting decision or preference came up, add a dated line to `notes/decisions.md`.
4. Make sure nothing secret is included (keys, passwords, tokens).
5. `git add -A && git commit -m "Session log: <title>" && git pull --rebase && git push origin main` (if notes conflict, keep both sides, newest first)
6. Tell Hemi in one line what was saved.
