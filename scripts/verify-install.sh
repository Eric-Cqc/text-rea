#!/usr/bin/env bash
# verify-install.sh — structural self-check for text-rea skill install
# Exit 0 on success; non-zero on first hard failure (message on stderr).
set -euo pipefail

err() { printf 'verify-install: FAIL: %s\n' "$*" >&2; exit 1; }
ok()  { printf 'verify-install: ok: %s\n' "$*"; }

# Resolve skill directory:
# 1) TEXT_REA_SKILL_DIR if set
# 2) repo layout: <repo>/skills/text-rea relative to this script
# 3) sibling: <parent>/text-rea when script lives next to an installed copy
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -n "${TEXT_REA_SKILL_DIR:-}" ]]; then
  SKILL_DIR="$(cd "$TEXT_REA_SKILL_DIR" && pwd)"
elif [[ -f "$SCRIPT_DIR/../skills/text-rea/SKILL.md" ]]; then
  SKILL_DIR="$(cd "$SCRIPT_DIR/../skills/text-rea" && pwd)"
elif [[ -f "$SCRIPT_DIR/../text-rea/SKILL.md" ]]; then
  SKILL_DIR="$(cd "$SCRIPT_DIR/../text-rea" && pwd)"
elif [[ -f "$SCRIPT_DIR/SKILL.md" ]]; then
  SKILL_DIR="$SCRIPT_DIR"
else
  err "cannot locate skills/text-rea (set TEXT_REA_SKILL_DIR or run from repo root)"
fi

ok "SKILL_DIR=$SKILL_DIR"

SKILL_MD="$SKILL_DIR/SKILL.md"
[[ -f "$SKILL_MD" ]] || err "missing $SKILL_MD"
ok "SKILL.md present"

# Frontmatter name / version (YAML-ish block between --- lines)
FRONT="$(awk 'BEGIN{p=0} /^---[[:space:]]*$/{p++; next} p==1{print} p>=2{exit}' "$SKILL_MD")"
[[ -n "$FRONT" ]] || err "SKILL.md has no frontmatter between --- markers"

echo "$FRONT" | grep -Eq '^name:[[:space:]]*["'\'']?text-rea["'\'']?[[:space:]]*$' \
  || err "frontmatter name must be text-rea"
ok "frontmatter name=text-rea"

VERSION_LINE="$(echo "$FRONT" | grep -E '^[[:space:]]*version:[[:space:]]*' | head -n1 || true)"
# also accept metadata: nested version
if [[ -z "$VERSION_LINE" ]]; then
  VERSION_LINE="$(echo "$FRONT" | grep -E '^[[:space:]]*version:[[:space:]]*' || true)"
fi
# metadata block form: metadata:\n  version: "x.y.z"
META_VERSION="$(echo "$FRONT" | awk '
  /^metadata:[[:space:]]*$/ {inmeta=1; next}
  inmeta && /^[^[:space:]]/ {inmeta=0}
  inmeta && /^[[:space:]]+version:[[:space:]]*/ {print; exit}
')"
if [[ -z "$VERSION_LINE" && -n "$META_VERSION" ]]; then
  VERSION_LINE="$META_VERSION"
fi
[[ -n "$VERSION_LINE" ]] || err "frontmatter missing version"
echo "$VERSION_LINE" | grep -Eq 'version:[[:space:]]*["'\'']?[0-9]+\.[0-9]+\.[0-9]+["'\'']?' \
  || err "version must look like SemVer N.N.N (got: $VERSION_LINE)"
ok "frontmatter version present ($VERSION_LINE)"

YAML="$SKILL_DIR/agents/openai.yaml"
[[ -f "$YAML" ]] || err "missing $YAML"
ok "agents/openai.yaml present"

# Golden example paths required by examples/README.md index
EXAMPLES_DIR="$SKILL_DIR/examples"
[[ -d "$EXAMPLES_DIR" ]] || err "missing $EXAMPLES_DIR"

REQUIRED_EXAMPLES=(
  "P010_唐三彩载乐骆驼俑.md"
  "P012_国家图书馆北区首次办卡指南.md"
  "P007_文字版REA_从参考到新稿.md"
)

for f in "${REQUIRED_EXAMPLES[@]}"; do
  [[ -f "$EXAMPLES_DIR/$f" ]] || err "missing example: examples/$f"
done
ok "golden example paths present (${#REQUIRED_EXAMPLES[@]} files)"

INDEX="$EXAMPLES_DIR/README.md"
[[ -f "$INDEX" ]] || err "missing examples/README.md (golden index)"
ok "examples/README.md present"

# Optional: repo-root docs when running from full clone
REPO_ROOT="$(cd "$SKILL_DIR/../.." && pwd)"
if [[ -f "$REPO_ROOT/INSTALL.md" ]]; then
  ok "repo INSTALL.md present"
fi

ok "all checks passed"
exit 0
