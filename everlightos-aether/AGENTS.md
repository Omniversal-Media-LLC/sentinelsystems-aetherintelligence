# Repository Guidelines

## Project Structure & Module Organization
- Domain folders capture content by area: `notion`, `legal-sentinel`, `music-ops`, `finance`, `server-dev`, `personal-life`, and `lore`; keep new assets in the closest existing domain.
- `bootstrap/` holds `aether.env` (path contract) and `everlight-bootstrap.sh` (orchestrates structure + optional server-dev scaffolding).
- `scripts/` contains reproducible setup helpers; extend `init-aether-structure.sh` when new directories or defaults are needed.
- `docs/USAGE.md` is the operator-facing quickstart; update it whenever commands, mounts, or outputs change.
- Add automation to `scripts/` or `server-dev/scripts/`; keep documentation alongside in `docs/`.

## Build, Test, and Development Commands
- `source bootstrap/aether.env` to load `AETHER_ROOT`/`AETHER_DRIVE` so scripts target the mounted drive consistently.
- `./bootstrap/everlight-bootstrap.sh` (from repo root) rebuilds the directory layout and runs any server-dev bootstrapper if present.
- `bash scripts/init-aether-structure.sh /media/aetherintelligence/everlightos-aether` reruns the structure creator directly; safe to re-run for idempotent scaffolding.
- Run scripts with `bash -euo pipefail` to match existing guardrails; prefer absolute paths when scripting the portable drive.

## Coding Style & Naming Conventions
- Shell: 2-space indent, `set -euo pipefail`, double-quote variables, use `$(...)` for command substitution, kebab-case filenames.
- Env vars: uppercase with AETHER/EVERLIGHT prefixes (`AETHER_ROOT`, `EVERLIGHT_STAGE`); keep shared values in `bootstrap/aether.env`.
- Markdown: lead with a `#` title, concise bullets, short command blocks; avoid verbose prose in operational notes.

## Testing Guidelines
- No automated suite yet; validate changes by rerunning `./bootstrap/everlight-bootstrap.sh` and confirming it completes cleanly and is idempotent.
- For new scripts, add a dry-run or `--help` flag where feasible and document usage in `docs/USAGE.md`.
- Smoke-check that new paths land under the intended domain (e.g., `music-ops/catalog`, `finance/roadmaps`, `server-dev/docker`).

## Commit & Pull Request Guidelines
- Follow existing history: prefix commits with `[codex]` and use present-tense, specific summaries (e.g., `[codex] add lore scaffold targets`).
- Keep commits focused; avoid mixing structural scaffolding with content drops in the same change.
- Describe scope, commands run, and any manual steps required for operators when submitting PRs or change notes; link issues or TODOs when applicable.

## Security & Configuration Tips
- Keep credentials outside the repo (e.g., `/media/aetherintelligence/secrets`); never commit tokens or API keys.
- Treat the drive as portable and often offline—document any new network dependency and provide an offline fallback when possible.
- Before stack-level work, ensure the drive is mounted at `/media/aetherintelligence`; adjust `bootstrap/aether.env` only through reviewed changes.
