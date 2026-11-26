# SECSTAT — Instructions

Read this, then your role file in this folder. File ownership is in [ARCHITECTURE.md](../ARCHITECTURE.md).

## Setup

1. Install R: [Download R for Windows](https://cran.r-project.org/bin/windows/base/) ([other systems](https://cran.r-project.org/)). Keep the default options.
2. Install VS Code and its **R** extension (by REditorSupport).
3. Open **R** and run:
   ```r
   install.packages(c("languageserver", "shiny", "bslib", "plotly", "DBI",
                      "RSQLite", "rmarkdown", "jsonlite", "testthat"))
   ```
4. In the same window, run `R.home("bin")` and copy the path.
5. In VS Code, press `Ctrl+Shift+P` → **Preferences: Open User Settings (JSON)** and add:
   ```json
   "r.executablePath": "YOUR/PATH/HERE/R.exe"
   ```
   Use forward slashes and put `R.exe` at the end.
6. Restart VS Code.

## Teams

| Team | Work |
|---|---|
| Leadership & Research | Architecture, research, Impact Predictor |
| Statistical Engineering | Models, diagnostics, validation |
| Services | Database, datasets, reports, analysis |
| Interface | Pages and charts |
| Data & QA | Simulator and testing |

**Flow:** Research → Data → Statistics → Services → Interface → Testing

## Rules

1. Work on your own files. Talk to the owner before touching theirs.
2. Use a branch and a pull request. Never push straight to `main`.
3. Add any new function input or output to `docs/FUNCTION_CONTRACT.md` **before** coding it.
4. Waiting on someone? Use sample data that matches the contract, and tell them and M1 the same day.
5. Statistics go in `R/statistics/` only.
6. Every major feature needs a test.
7. Never overwrite raw data. Record the seed and simulator version.
8. Announce simulator changes to M3, M4 and M10, and bump the version.
9. Use the shared theme, and put timeouts on long jobs.
10. Never commit passwords or keys.
11. Report only real results, and state that the data is simulated.
12. New folders under `R/` must be loaded by `app.R` and `tests/testthat/helper-load.R`.