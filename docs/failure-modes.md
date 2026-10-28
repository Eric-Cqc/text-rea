# Failure modes · text-rea

Product-facing failure states (Vivian four classes). Skill behavior should match these; do not invent facts or produce job-prep packages.

## 1. Installed but does not trigger

| | |
|---|---|
| **Symptom** | Agent never selects `text-rea` / `$text-rea` |
| **Likely cause** | Wrong directory name; skill not under the agent’s skills root; skills not reloaded |
| **Do** | Confirm `<skills-root>/text-rea/SKILL.md` exists; directory name is exactly `text-rea`; reload skills; retry with explicit `用文字版 REA` or `$text-rea` |
| **Confirm** | `bash scripts/verify-install.sh` from a clone exits 0; path check above passes |

## 2. Idle chat dragged into the full pipeline

| | |
|---|---|
| **Symptom** | Casual chat or pure format conversion gets a full REA write-up |
| **Likely cause** | Over-trigger; user did not ask for writing / transfer / revise |
| **Do** | Skill stays out of the full pipeline for ordinary chat and pure format conversion. User should say they want text-rea **and** provide materials and/or a reference when they need a draft or teardown |
| **Confirm** | No long draft produced for “hi” / “帮我换个格式” alone |

## 3. Materials insufficient

| | |
|---|---|
| **Symptom** | Ask is a draft/transfer, but facts, reference, reader, or success criteria are missing |
| **Likely cause** | Incomplete input pack |
| **Do** | Stop at clarifying questions or mark unknowns. **Do not** invent biography, citations, or unstated facts to fill gaps |
| **Confirm** | Output names what is missing (materials / reference / reader / success criteria) instead of a polished fake draft |

## 4. User only wants “make it sound better” with no source boundary

| | |
|---|---|
| **Symptom** | Request is polish/rewrite with no reference moves and no material boundary |
| **Likely cause** | Style-only ask outside REA’s transfer contract |
| **Do** | Restate: steal **structure**, not sentences. Offer a contrast against a named reference **or** edit within provided materials; refuse unsourced imitation of a living author’s unique voice |
| **Confirm** | No sentence-level pastiche of a named living writer; materials vs reference roles stay separate |

## Related

- Minimal input template: [quickstart-min-input.md](quickstart-min-input.md)
- Install: [../INSTALL.md](../INSTALL.md)
- QA log: [QA.md](QA.md)
