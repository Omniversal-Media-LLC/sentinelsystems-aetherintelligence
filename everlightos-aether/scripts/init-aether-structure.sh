#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="${1:-/media/aetherintelligence/everlightos-aether}"
echo "Initializing EverLightOS Aether structure at: $ROOT_DIR"

mkdir -p "$ROOT_DIR"/{notion,legal-sentinel,music-ops,finance,server-dev,personal-life,lore,bootstrap,docs}
mkdir -p "$ROOT_DIR"/notion/{operations-hub,dashboards,templates}
mkdir -p "$ROOT_DIR"/notion/dashboards/{sentinel-framework,omniversal-media-music-ops,finance-credit,server-dev-everlightos,personal-life-logistics,memory-vault-lore}
mkdir -p "$ROOT_DIR"/server-dev/{docker,env,scripts,infra}
mkdir -p "$ROOT_DIR"/legal-sentinel/{emails,evidence,osha-dol,hr-cases,policy-memos}
mkdir -p "$ROOT_DIR"/music-ops/{catalog,bmi-mlc,metadata,lyrics,merch}
mkdir -p "$ROOT_DIR"/finance/{nfcu,mercury,business-credit,vehicle-loans,roadmaps}
mkdir -p "$ROOT_DIR"/personal-life/{housing,dmv,phones,cassie}
mkdir -p "$ROOT_DIR"/lore/{nightfall,valor,aether-tree,meta}

cat > "$ROOT_DIR/README.md" <<'RMD'
# EverLightOS Aether Blueprint

Portable, repeatable build structure for:
- Notion HQ (Operations Hub + Dashboards)
- Sentinel Framework (legal/OSHA/HR)
- Omniversal Media (music ops)
- Finance roadmap
- EverLightOS server/dev
- Personal logistics
- Lore / mythology
RMD

echo "Done."
