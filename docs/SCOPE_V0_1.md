# SCOPE v0.1 — Civil Engineering Assistant (CEA)

## Goal (v0.1)
Deliver a **template-first assistant** that helps civil engineers produce consistent, professional outputs fast — without touching private client files.

v0.1 is intentionally **NOT** an “AI that does engineering”. It is a structured productivity tool:
- checklists
- calculation sheets (basic, transparent, traceable)
- report templates
- QA/self-review workflow

## Target users
- Individual civil engineers
- Small engineering offices
- Fresh graduates needing structure

## Core workflows (v0.1)
1) **Project kickoff pack (generic)**
   - Generates a project setup checklist (non-client)
   - Creates a folder-ready deliverables structure (generic)
   - Produces a “what to collect from client” list (without storing it)

2) **Calculation note builder (basic + transparent)**
   - User selects a calculation template (e.g., unit conversions, basic load combinations *as a template*, concrete mix note template, rebar schedule template — templates only)
   - User inputs numbers manually
   - Output is a calculation note with:
     - inputs
     - formulas shown
     - assumptions
     - references section (empty placeholders unless user fills)

3) **QA / Self-review checklist**
   - Produces discipline checklists (drawing review, BOQ sanity checks, site checklist)
   - Output is a signed checklist page (engineer signs, not the app)

## Deliverables (v0.1)
All deliverables are **generic** and stored under:
- templates/ (source templates)
- deliverables/ (outputs, sample outputs only)
- samples/ (synthetic example inputs only)

Deliverables include:
- Generic engineering checklists (PDF/MD)
- Generic report template (MD/DOCX later)
- Calculation note templates (MD/CSV later)
- “Project Kickoff Pack” generator output (folder + docs)

## Hard boundaries (non-negotiable)
- No client documents, drawings, photos, contracts, or PDFs in Git.
- No claims of code compliance, approval, or certification.
- No black-box calculations: everything must show inputs + formulas.
- Prefer free/no-credit-card tools and platforms whenever possible.

## Success criteria
- Engineer can produce a clean kickoff pack + one calculation note + one QA checklist in < 15 minutes.
- Repo remains clean: no sensitive files committed.
- Outputs are consistent and handover-ready.

## Out of scope (v0.1)
- Full structural analysis engine
- CAD/DWG parsing
- Automatic code compliance checking
- Cloud multi-user storage
- Any “upload your project and I’ll solve it” workflow
