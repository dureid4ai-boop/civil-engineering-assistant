# CEA — App Manual (v0.1 style)

## What CEA is
CEA is a **template-first assistant** that helps civil engineers produce consistent outputs faster:
- kickoff checklist
- QA/self-review checklist
- calculation note templates (transparent)

CEA is **not** an analysis engine and does **not** approve work.

## Golden rules (must follow)
1) **No client-sensitive files in Git** (ever).
2) **No black-box calculations**: inputs + formulas must be visible.
3) Prefer **free/no-credit-card** tools unless explicitly approved and documented.

## Repo map (where things live)
- 	emplates/ → master templates you copy/use
- deliverables/ → generated outputs (samples only in Git)
- deliverables/_PRIVATE_DO_NOT_COMMIT/ → real client outputs (never committed)
- samples/ → synthetic test inputs
- docs/ → scope, governance, manuals, runbooks

## Typical workflow (recommended)
### 1) Start a new project (without storing client data here)
1. Copy kickoff template:
   - 	emplates/kickoff/CEA_KICKOFF_CHECKLIST.md
2. Place the working copy in:
   - deliverables/_PRIVATE_DO_NOT_COMMIT/<PROJECT_NAME>/
3. Fill it with your internal plan (do not paste client documents).

### 2) Produce a calculation note (transparent)
1. Copy:
   - 	emplates/calculations/CEA_CALC_NOTE_UNIT_CONVERSIONS.md
2. Save working copy under:
   - deliverables/_PRIVATE_DO_NOT_COMMIT/<PROJECT_NAME>/calculations/
3. Fill in:
   - inputs
   - factor/formula
   - result
   - checks

### 3) Run QA before sending anything
1. Copy:
   - 	emplates/qa/CEA_QA_SELF_REVIEW_CHECKLIST.md
2. Save working copy under:
   - deliverables/_PRIVATE_DO_NOT_COMMIT/<PROJECT_NAME>/qa/
3. Tick items, sign, and keep as project record.

## Using the sample outputs
Sample outputs in deliverables/ are synthetic and safe.
They show the intended format and tone.

## How to add new templates safely
- Add new templates under 	emplates/<category>/
- Ensure they are generic (no client info)
- Add a synthetic sample output under deliverables/
- Update docs/OPEN_ITEMS.md if it changes scope

## Troubleshooting
- If you see Git warnings about LF/CRLF on Windows: safe to ignore.
- If a sensitive file is accidentally staged: unstage it immediately and remove it.

## Next improvements (planned)
- More calculation note templates (still transparent)
- Optional DOCX export (later)
- A simple CLI generator (only if needed)
