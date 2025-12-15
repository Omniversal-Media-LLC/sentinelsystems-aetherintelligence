# Project Handoff (Template)

Fill in the placeholders and drop this file into the repo root for future rotations.

## Project
- Name: <PROJECT_NAME>
- Owner: <OWNER_OR_TEAM>
- Contact: <SECURITY_OR_ENG_EMAIL>
- Primary branch: `main`
- Remote: <GIT_REMOTE_URL>

## Layout (update as needed)
- `everlightos-aether/` — stack code and bootstrap assets.
- `secrets/` — ignored; place real credentials here (e.g., `secrets/aether.env`).
- `.github/workflows/ci.yml` — basic CI (Node: install/test/lint when `package.json` exists; no-op otherwise).
- `SECURITY.md` — reporting channel and expectations.

## Secrets
- Never commit real secrets. Use the example env: `everlightos-aether/bootstrap/aether.env.example`.
- Keep live values in `secrets/aether.env` (git-ignored) or your secret manager.

## Getting Started
1) `git clone <GIT_REMOTE_URL>`
2) Copy `everlightos-aether/bootstrap/aether.env.example` -> `secrets/aether.env` and fill real values.
3) If Node is used: `npm ci` (or your package manager), `npm test`, `npm run lint`.
4) Run CI locally when possible; GitHub Actions will run on PRs/pushes.

## Security + Reporting
- Security email: <SECURITY_CONTACT> (see `SECURITY.md`).
- If a push is blocked for secrets: scrub the secret, rotate it, and rewrite history if needed.

## Commit & PR Norms (adjust)
- Small, scoped commits; use imperative messages.
- PR checklist: tests pass, no secrets, CI green.

## Short Status (keep updated)
- Last known good commit: <SHA>
- Pending work: <TODO_SUMMARY>
