#!/usr/bin/env bash
# verify-install.sh — layout + clean-prefix install self-check for text-rea
# Exit 0 on success; non-zero with readable stderr on failure.
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage: bash scripts/verify-install.sh [--dry-run] [--prefix DIR]

  --dry-run   Validate in-tree skill only; do not copy to a temp prefix.
  --prefix    Destination for simulated install (default: mktemp -d).
USAGE
}

DRY_RUN=0
PREFIX=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --dry-run) DRY_RUN=1; shift ;;
    --prefix)
      [[ $# -ge 2 ]] || { echo "error: --prefix needs a directory" >&2; exit 2; }
      PREFIX="$2"; shift 2 ;;
    -h|--help) usage; exit 0 ;;
    *) echo "error: unknown argument: $1" >&2; usage >&2; exit 2 ;;
  esac
done

die() {
  echo "verify-install: FAIL — $*" >&2
  exit 1
}

info() {
  echo "verify-install: $*"
}

# Resolve repo root: directory that contains skills/text-rea/SKILL.md
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SKILL_SRC="${REPO_ROOT}/skills/text-rea"

[[ -d "${SKILL_SRC}" ]] || die "missing skill source directory: ${SKILL_SRC}"
[[ -f "${SKILL_SRC}/SKILL.md" ]] || die "missing SKILL.md at ${SKILL_SRC}/SKILL.md"

check_skill_tree() {
  local root="$1"
  local label="$2"
  local skill_md="${root}/SKILL.md"
  local yaml="${root}/agents/openai.yaml"
  local examples_readme="${root}/examples/README.md"

  [[ -f "${skill_md}" ]] || die "[${label}] SKILL.md not found: ${skill_md}"
  [[ -f "${yaml}" ]] || die "[${label}] agents/openai.yaml not found: ${yaml}"
  [[ -d "${root}/references" ]] || die "[${label}] references/ directory missing"
  [[ -d "${root}/examples" ]] || die "[${label}] examples/ directory missing"
  [[ -f "${examples_readme}" ]] || die "[${label}] examples/README.md missing (golden index required)"

  # Frontmatter: name and version
  local name_line version_line
  name_line="$(grep -E '^name:[[:space:]]*' "${skill_md}" | head -n1 || true)"
  [[ -n "${name_line}" ]] || die "[${label}] SKILL.md frontmatter missing name:"
  echo "${name_line}" | grep -Eq '^name:[[:space:]]*text-rea[[:space:]]*$' \
    || die "[${label}] SKILL.md name must be exactly 'text-rea' (got: ${name_line})"

  version_line="$(grep -E '^[[:space:]]*version:[[:space:]]*' "${skill_md}" | head -n1 || true)"
  [[ -n "${version_line}" ]] || die "[${label}] SKILL.md metadata.version missing"
  echo "${version_line}" | grep -Eq 'version:[[:space:]]*"?[0-9]+\.[0-9]+\.[0-9]+"?[[:space:]]*$' \
    || die "[${label}] SKILL.md version is not SemVer X.Y.Z (got: ${version_line})"

  # Directory basename should match skill name when installed as .../text-rea
  local base
  base="$(basename "${root}")"
  [[ "${base}" == "text-rea" ]] || die "[${label}] install directory must be named text-rea (got: ${base})"

  # openai.yaml required keys
  grep -Eq 'display_name:' "${yaml}" || die "[${label}] agents/openai.yaml missing display_name"
  grep -Eq 'default_prompt:' "${yaml}" || die "[${label}] agents/openai.yaml missing default_prompt"

  # Core references used by SKILL.md relative links
  local req_refs=(
    writing.md transfer.md writing-actions.md thinking-patterns.md
    style-retrieval.md corpus-profile.md relation-checks.md research.md
    runbooks.md protocol.md harness.md iteration.md evidence-notes.md
  )
  local r
  for r in "${req_refs[@]}"; do
    [[ -f "${root}/references/${r}" ]] || die "[${label}] missing references/${r}"
  done

  # Golden examples named in examples/README.md and root README
  local req_examples=(
    P007_文字版REA_从参考到新稿.md
    P010_唐三彩载乐骆驼俑.md
    P012_国家图书馆北区首次办卡指南.md
  )
  local e
  for e in "${req_examples[@]}"; do
    [[ -f "${root}/examples/${e}" ]] || die "[${label}] missing examples/${e}"
  done

  # No broken in-repo relative companion link to research-report-critique
  if grep -Eq '\]\(\.\./research-report-critique/' "${skill_md}"; then
    die "[${label}] SKILL.md still links to out-of-repo ../research-report-critique/ — replace with boundary note"
  fi

  info "[${label}] OK — name=text-rea version=$(echo "${version_line}" | sed -E 's/.*version:[[:space:]]*"?([^"]+)"?.*/\1/') path=${root}"
}

info "repo root: ${REPO_ROOT}"
check_skill_tree "${SKILL_SRC}" "in-tree"

if [[ "${DRY_RUN}" -eq 1 ]]; then
  info "dry-run: skipped clean-prefix copy"
  info "PASS"
  exit 0
fi

CLEANUP_PREFIX=0
if [[ -z "${PREFIX}" ]]; then
  PREFIX="$(mktemp -d "${TMPDIR:-/tmp}/text-rea-verify.XXXXXX")"
  CLEANUP_PREFIX=1
else
  mkdir -p "${PREFIX}"
fi

DEST="${PREFIX%/}/text-rea"
rm -rf "${DEST}"
mkdir -p "$(dirname "${DEST}")"
cp -R "${SKILL_SRC}" "${DEST}"

info "simulated install → ${DEST}"
check_skill_tree "${DEST}" "clean-prefix"

if [[ "${CLEANUP_PREFIX}" -eq 1 ]]; then
  rm -rf "${PREFIX}"
  info "cleaned temp prefix"
fi

info "PASS"
exit 0
