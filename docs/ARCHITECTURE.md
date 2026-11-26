## Project architecture
```
SECSTAT/
│
├── .gitattributes                             — M1 [Rayan]
├── app.R                                      — M1 [Rayan] & M7 [Abdelrahman]
├── DESCRIPTION                                — M1 [Rayan]
├── renv.lock                                  — M1 [Rayan]
├── README.md                                  — M1 [Rayan]
├── ROLES.md                                   — M1 [Rayan]
├── CONTRIBUTING.md                            — M1 [Rayan]
│
├── docs/                                      — M1 [Rayan] (project-level docs)
│   ├── ARCHITECTURE.md                        — M1 [Rayan]
│   ├── FUNCTION_CONTRACT.md                   — M1 [Rayan]
│   ├── PROJECT_PLAN.md                        — M1 [Rayan]
│   ├── TESTING.md                             — M1 [Rayan] (with M10 [Omar Tarek])
│   ├── REPRODUCIBILITY.md                     — M1 [Rayan] (with M10 [Omar Tarek])
│   └── Roles/                                 — M1 [Rayan]
│
├── research/                                  — M2 [Remas] (research content)
│   ├── RESEARCH_PROPOSAL.md                   — M2 [Remas]
│   ├── HYPOTHESES.md                          — M2 [Remas]
│   ├── VARIABLE_DICTIONARY.md                 — M2 [Remas]
│   ├── METHODOLOGY.md                         — M2 [Remas]
│   └── RESULTS_LOG.md                         — M2 [Remas]
│
├── simulation/                                — M9 [Tamim]
│   ├── SIMULATION_MODEL.md                    — M9 [Tamim]
│   ├── generate_dataset.R                     — M9 [Tamim]
│   └── scenarios.json                         — M9 [Tamim]
│
├── data/
│   ├── raw/                                   — M9 [Tamim]
│   ├── processed/                             — M9 [Tamim]
│   ├── DATA_DICTIONARY.md                     — M1 [Rayan] (from M9 [Tamim] input)
│   └── DATA_PROVENANCE.md                     — M1 [Rayan] (from M9 [Tamim] input)
│
├── R/
│   ├── statistics/
│   │   ├── descriptive.R                      — M1 [Rayan] & M4 [Jomana]
│   │   ├── correlation.R                      — M1 [Rayan] & M4 [Jomana]
│   │   ├── simple_regression.R                — M3 [Basouny]
│   │   ├── multiple_regression.R              — M3 [Basouny]
│   │   ├── polynomial_regression.R            — M3 [Basouny]
│   │   ├── prediction.R                       — M3 [Basouny]
│   │   ├── regression_plots.R                 — M3 [Basouny]
│   │   ├── anova_one_way.R                    — M1 [Rayan] & M3 [Basouny]
│   │   ├── posthoc.R                          — M1 [Rayan] & M3 [Basouny]
│   │   ├── diagnostics.R                      — M4 [Jomana]
│   │   ├── model_comparison.R                 — M4 [Jomana]
│   │   └── validation_tests.R                 — M4 [Jomana]
│   │
│   ├── services/
│   │   ├── database.R                         — M5 [Haneen Ali]
│   │   ├── simulation_service.R               — M5 [Haneen Ali]
│   │   ├── dataset_service.R                  — M5 [Haneen Ali]
│   │   ├── report_service.R                   — M5 [Haneen Ali]
│   │   ├── analysis_service.R                 — M6 [Haneen]
│   │   └── prediction_service.R               — M6 [Haneen]
│   │
│   ├── core/
│   │   ├── config.R                           — M1 [Rayan]
│   │   ├── validators.R                       — M6 [Haneen]
│   │   ├── helpers.R                          — M1 [Rayan]
│   │   └── theme.R                            — M1 [Rayan] & M8 [Nabila]
│   │
│   └── interface/
│       ├── mod_predictor.R                    — M2 [Remas] & M8 [Nabila]
│       ├── mod_dashboard.R                    — M7 [Abdelrahman]
│       ├── mod_simulation.R                   — M7 [Abdelrahman]
│       ├── mod_datasets.R                     — M7 [Abdelrahman]
│       ├── mod_regression.R                   — M8 [Nabila] & M7 [Abdelrahman]
│       ├── mod_traffic_levels.R               — M8 [Nabila] & M7 [Abdelrahman]
│       ├── mod_diagnostics.R                  — M8 [Nabila]
│       ├── mod_model_comparison.R             — M8 [Nabila]
│       ├── mod_reports.R                      — M8 [Nabila]
│       └── charts.R                           — M8 [Nabila]
│
├── www/
│   ├── images/                                — M1 [Rayan]
│   │   └── SECSTAT Logo.jpg                   — M1 [Rayan]
│   └── icons/                                 — M1 [Rayan] (kept with .gitkeep while empty)
│
├── reports/
│   ├── README.md                              — M1 [Rayan]
│   ├── report_template.Rmd                    — M5 [Haneen Ali]
│   ├── generated/                             — M5 [Haneen Ali]
│   └── figures/                               — M8 [Nabila]
│
└── tests/                                     — M10 [Omar Tarek]
    └── testthat/                              — M10 [Omar Tarek]
        ├── helper-load.R                      — M10 [Omar Tarek]
        ├── test-reproducibility.R             — M10 [Omar Tarek]
        ├── test-analysis.R                    — M10 [Omar Tarek]
        └── test-prediction.R                  — M10 [Omar Tarek]

```

## Architecture notes

### Technology and execution

The application is R-only: Shiny with bslib for the interface, plotly for interactive visualizations, R for simulation and statistics, DBI/RSQLite for local persistence, R Markdown for reports, testthat for tests, and renv for reproducible dependencies. PostgreSQL may be used as an optional database.

The delivery chain is:

```text
M2 research definitions
  → M9 seeded R simulator and documented dataset
  → M3/M4 statistical functions (with M1's shared statistics)
  → M5/M6 R services and persistence
  → M1/M7 app integration and M2/M7/M8 Shiny modules
  → M10 testthat verification
```

Shiny modules call R functions directly; there is no separate service process. The dependency handoffs are recorded in [Roles/Instructions.md](Roles/Instructions.md): research definitions flow to the simulator and model owners; datasets and ground truth flow to statistics, services, and tests; statistics functions and service results flow to the Shiny modules; test findings flow back to all owners.

### Dependency map

| Who needs it | From | Handoff |
|---|---|---|
| M9 | M2 | Variable definitions, units, ranges, and expected relationships (`research/VARIABLE_DICTIONARY.md`) |
| M3 and M4 | M2 and M9 | Hypotheses, model equations, datasets, and simulation ground truth |
| M5 | M1, M6, and M9 | Data conventions, analysis results to store, and simulator outputs |
| M6 | M1, M3, M4, and M5 | Function contract, statistics functions, model choice, and datasets |
| M2, M7, and M8 | M1, M5, and M6 | App/theme conventions and dataset, analysis, prediction, and report results |
| M7 and M8 | M2 and M9 | Research requirements and simulation scenario definitions |
| M10 | Everyone | Merged code, seeds, and reference results for testthat checks |
| Everyone | M10 | Test findings and verification of fixes |

### Sourcing R files

Shiny does not automatically load files inside `R/` subfolders. `app.R` must recursively source all `.R` files under `R/` before using their functions. Tests must source the same files; `tests/testthat/helper-load.R` provides the shared test setup. Keep both loading paths recursive as files are added to nested folders.

### Package metadata

`DESCRIPTION` and `renv.lock` are planned, M1-owned project files and remain in this architecture. Create them after the application code and its package dependencies exist; they are not part of the current structural scaffold.

### Collaboration

`docs/ARCHITECTURE.md` is the source of truth for file ownership. Update the matching role file whenever ownership changes, and make every “Depends on” handoff reciprocal in the provider's “Provides to” section. Coordinate shared files with every listed owner. Agree function inputs and return shapes in `docs/FUNCTION_CONTRACT.md` before implementation, work on branches and pull requests, and test changes. Preserve raw datasets and record the simulator seed and version; keep research questions, hypotheses, variables, and models stable unless the research owners approve a change.