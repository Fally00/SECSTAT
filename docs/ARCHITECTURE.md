## Project architeture
```
SECSTAT/
│
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
│   ├── images/
│   └── icons/
│
├── reports/
│   ├── README.md                              — unassigned (not specified in role docs)
│   ├── report_template.Rmd                    — M5 [Haneen Ali]
│   ├── generated/                             — M5 [Haneen Ali]
│   └── figures/                               — M8 [Nabila]
│
└── tests/                                     — M10 [Omar Tarek]
    └── testthat/
        ├── test-reproducibility.R             — M10 [Omar Tarek]
        ├── test-analysis.R                    — M10 [Omar Tarek]
        └── test-prediction.R                  — M10 [Omar Tarek]