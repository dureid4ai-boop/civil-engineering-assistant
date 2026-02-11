# SECURITY_AND_PRIVACY — CEA

## Golden rules
- No client material in Git. Ever.
- Use samples/ for synthetic data only.
- Keep private work in deliverables/_PRIVATE_DO_NOT_COMMIT/.

## Before every commit (quick check)
- git status
- scan filenames for client/project identifiers
- confirm no PDFs/DWGs/ZIPs/etc. staged

## If a sensitive file was committed by mistake
- STOP pushing
- remove from git history (requires proper rewrite)
- rotate any exposed secrets
- document incident in DECISION_LOG
