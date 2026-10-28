# Mac environment rebuild runbook

## Scope

Use this procedure only for an authorized Mac migration, restoration, or rebuild, including applying a rebuild bundle’s AI configurations. Opening a folder, routine development, instruction maintenance, and read-only inventory do not trigger it. General safety and authorization requirements remain in force. Skip already satisfied items.

## Boundaries throughout the work

Never read, request, print, copy, log, or commit secrets: passwords, tokens, cookies, keychain data, `.env` values, or private keys. Skip automated backup and replacement of secret-bearing files. Use official interactive login flows and report necessary manual steps.

Do not copy database physical directories or `Docker.raw`. Use only logical exports authorized for this task and consistent with the sensitive-data restrictions.

During verification and dry-run, keep Git read-only: no fetch, pull, push, checkout, reset, or clean. Preserve existing changes. A Git commit does not back up untracked files or machine state.

## 1. Locate the authorized inputs

Identify the authorized rebuild bundle and destination paths. Read the bundle’s `START_HERE.md`, `AUTONOMOUS_REBUILD_PLAN.md`, and only the non-secret fields of `machine-state.json`. Resolve bundle-relative paths from that bundle.

## 2. Verify before executing bundled code

Check source files against the bundle’s specified checksum manifest before executing any bundled code. Missing prerequisites or checksum mismatches block dependent rebuild operations; safe independent inspection may continue. Matching checksums establish consistency with the manifest, not authenticity by themselves.

## 3. Check the destination

Detect the destination hardware and process architecture, accounting for translated processes. Determine the actual runtime and MCP executable paths on the destination and verify every replacement path. Derive paths from that machine rather than copying old absolute paths.

## 4. Inspect and review the dry-run

Inspect `scripts/rebuild-with-codex.sh` and relevant invoked code before running it. Confirm that the dry-run will not change destinations, reveal secrets, or exceed authorized network access.

From the verified bundle directory, run:

```text
scripts/rebuild-with-codex.sh --dry-run --apply-ai-configs
```

Review its proposed effects before the real rebuild. The flag name alone does not prove that the operation is safe.

## 5. Verify a recoverable backup before modifying existing content

Before modifying any existing destination, create and verify a recoverable backup covering the affected content. Record its location and restoration method. If no safe backup is available, stop that modification.

A backup does not authorize deletion, uninstalling, cleaning, resetting, or overwriting beyond the user’s request.

## 6. Apply, verify, and report

Apply only authorized changes covered by the reviewed dry-run, with verified backups for affected existing content. Verify the resulting behavior. If a step fails, stop dependent steps while continuing safe independent work.

Report each step as **completed**, **skipped**, **warning**, **failed**, or **manual**. Include concise verification evidence and any applicable backup location or next action. A successful command exit alone does not establish a verified result.
