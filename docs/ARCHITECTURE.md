## Project architeture
```
SECSTAT/
│
├── app.R                                      — M1 [Rayan] & M6 [Abdelrahman]
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
│   ├── TESTING.md                             — M1 [Rayan] (with M9 [Omar Tarek])
│   ├── REPRODUCIBILITY.md                     — M1 [Rayan] (with M9 [Omar Tarek])
│   └── Roles/                                 — M1 [Rayan]
│
├── research/                                  — M2 [Remas] (research content)
│   ├── RESEARCH_PROPOSAL.md                   — M2 [Remas]
│   ├── HYPOTHESES.md                          — M2 [Remas]
│   ├── VARIABLE_DICTIONARY.md                 — M2 [Remas]
│   ├── METHODOLOGY.md                         — M2 [Remas]
│   └── RESULTS_LOG.md                         — M2 [Remas]
│
├── simulation/                                — M8 [Tamim]
│   ├── SIMULATION_MODEL.md                    — M8 [Tamim]
│   ├── generate_dataset.R                     — M8 [Tamim]
│   └── scenarios.json                         — M8 [Tamim]
│
├── data/
│   ├── raw/                                   — M8 [Tamim]
│   ├── processed/                             — M8 [Tamim]
│   ├── DATA_DICTIONARY.md                     — M1 [Rayan] (from M8 [Tamim] input)
│   └── DATA_PROVENANCE.md                     — M1 [Rayan] (from M8 [Tamim] input)
│
├── R/
│   ├── statistics/
│   │   ├── descriptive.R                      — M1 [Rayan]
│   │   ├── correlation.R                      — M1 [Rayan]
│   │   ├── simple_regression.R                — M3 [Basouny]
│   │   ├── multiple_regression.R              — M3 [Basouny]
│   │   ├── polynomial_regression.R            — M3 [Basouny]
│   │   ├── prediction.R                       — M3 [Basouny]
│   │   ├── regression_plots.R                 — M3 [Basouny]
│   │   ├── anova_one_way.R                    — M1 [Rayan] & M3 [Basouny]
│   │   ├── posthoc.R                          — M1 [Rayan] & M3 [Basouny]
│   │   ├── diagnostics.R                      — M1 [Rayan]
│   │   ├── model_comparison.R                 — M3 [Basouny]
│   │   └── validation_tests.R                 — M9 [Omar Tarek]
│   │
│   ├── services/
│   │   ├── database.R                         — M4 [Jomana]
│   │   ├── simulation_service.R               — M4 [Jomana]
│   │   ├── dataset_service.R                  — M4 [Jomana]
│   │   ├── report_service.R                   — M4 [Jomana]
│   │   ├── analysis_service.R                 — M5 [Haneen]
│   │   └── prediction_service.R               — M5 [Haneen]
│   │
│   ├── core/
│   │   ├── config.R                           — M1 [Rayan]
│   │   ├── validators.R                       — M5 [Haneen]
│   │   ├── helpers.R                          — M1 [Rayan]
│   │   └── theme.R                            — M1 [Rayan] & M7 [Nabila]
│   │
│   └── interface/
│       ├── mod_predictor.R                    — M2 [Remas] & M7 [Nabila]
│       ├── mod_dashboard.R                    — M6 [Abdelrahman]
│       ├── mod_simulation.R                   — M6 [Abdelrahman]
│       ├── mod_datasets.R                     — M6 [Abdelrahman]
│       ├── mod_regression.R                   — M7 [Nabila] & M6 [Abdelrahman]
│       ├── mod_traffic_levels.R               — M7 [Nabila] & M6 [Abdelrahman]
│       ├── mod_diagnostics.R                  — M7 [Nabila]
│       ├── mod_model_comparison.R             — M7 [Nabila]
│       ├── mod_reports.R                      — M7 [Nabila]
│       └── charts.R                           — M7 [Nabila]
│
├── www/
│   ├── images/
│   └── icons/
│
├── reports/
│   ├── README.md                              — unassigned 
│   ├── report_template.Rmd                    — M4 [Jomana]
│   ├── generated/                             — M4 [Jomana]
│   └── figures/                               — M7 [Nabila]
│
└── tests/                                     — M9 [Omar Tarek]
    └── testthat/
        ├── test-reproducibility.R             — M9 [Omar Tarek]
        ├── test-analysis.R                    — M9 [Omar Tarek]
        └── test-prediction.R                  — M9 [Omar Tarek]