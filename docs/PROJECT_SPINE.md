# PROJECT_SPINE — Civil Engineering Assistant (CEA)

## 1) Purpose
CEA is a toolkit + app that helps civil engineers work faster and more consistently:
- standardized checklists
- calculation helpers (as allowed by scope)
- report templates
- QA/verification workflows
- knowledge base / references (non-copyrighted, or linked)

## 2) Non-goals (hard boundaries)
- Not a licensed structural analysis engine.
- Not a substitute for engineering judgement, codes, or approvals.
- No storage of private client files in GitHub.

## 3) Governance rules (LOCKED unless explicitly reopened)
### Privacy & client safety
- Never commit client drawings, contracts, invoices, IDs, site coordinates, or photos.
- Use deliverables/_PRIVATE_DO_NOT_COMMIT/ for any real client material.
- If in doubt: treat as private and keep out of Git.

### Tooling policy (your rule)
- Prefer free solutions requiring no credit card whenever possible.
- If a paid service is required, it must be explicitly approved and documented in docs/decisions.

### Decision tracking
- Any major decision goes into docs/decisions/DECISION_LOG.md with date + rationale.

### Versioning
- v0.x while building; v1.0 when scope is stable and handover-ready.
- Each release must update docs/CURRENT_STATE.md and docs/OPEN_ITEMS.md.

## 4) Repo structure (source of truth)
- /docs = scope, manuals, decisions, security, runbooks
- /src = app code (when we start)
- /templates = report templates, checklists (clean, generic)
- /samples = fake/sample inputs (non-sensitive)
- /deliverables = outputs; private subfolder is blocked by .gitignore

## 5) Handover readiness checklist
- README + manual exists
- runbook exists
- decision log exists
- no sensitive files committed
- reproducible setup steps documented
