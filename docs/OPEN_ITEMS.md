# OPEN_ITEMS — Civil Engineering Assistant (CEA)

## Active (v0.1 backlog)
1. Create docs/security/PRIVACY_PRECOMMIT_CHECKLIST.md (verify exists; refine to 1-page final)
2. Create docs/runbooks/RELEASE_RUNBOOK.md (verify exists; refine)
3. Add 1 “report template” (generic) under templates/ (e.g., calculation cover page / transmittal)
4. Create a simple local generator script:
   - copies templates into deliverables/_PRIVATE_DO_NOT_COMMIT/<PROJECT_NAME>/
   - creates subfolders (calculations, qa, kickoff)
   - never touches Git history
5. Update docs/APP_MANUAL.md to include the generator workflow
6. Tag v0.1 when generator + report template are complete

## Completed
- Repo skeleton created
- v0.1 scope defined
- Kickoff checklist template created
- QA self-review checklist template created
- 3 transparent calc-note templates created + synthetic samples
- .gitattributes added (line ending normalization)
- v0.0.2 tag created (docs/manual milestone)
