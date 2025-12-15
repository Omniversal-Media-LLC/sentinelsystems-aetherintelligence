#!/usr/bin/env bash
set -euo pipefail

# Load env contract
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/aether.env"

echo "⚙️ EverLightOS Bootstrap"
echo "Root: $AETHER_ROOT"

# Ensure structure exists
"$AETHER_ROOT/scripts/init-aether-structure.sh" "$AETHER_ROOT"

# Ensure server/dev scaffolding exists
if [ -x "$AETHER_ROOT/scripts/bootstrap-server-dev.sh" ]; then
  "$AETHER_ROOT/scripts/bootstrap-server-dev.sh" "$AETHER_ROOT"
fi

echo "✅ EverLightOS bootstrap complete."
