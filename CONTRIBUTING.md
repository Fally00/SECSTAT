# Contributing to SECSTAT

1. Read [the team instructions](docs/Roles/Instructions.md) and [the architecture](docs/ARCHITECTURE.md) before changing files.
2. Work on a feature branch; do not commit directly to the shared base branch. Open a pull request and request review from every listed owner of changed shared files.
3. Keep file ownership aligned between `docs/ARCHITECTURE.md` and the role files. Update the [function contract](docs/FUNCTION_CONTRACT.md) before changing function inputs or returned columns.
4. Preserve the research question, hypotheses, variables, and model definitions. Coordinate simulator changes with the research and statistics owners, record the simulator version, and never overwrite raw datasets.
5. Add or update focused testthat coverage for behavior changes. Both `app.R` and the test setup must recursively source R files under `R/`.
6. Keep changes scoped, document reproducibility details, and include test results in the pull request.
