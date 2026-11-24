## Project Structure Tree

```
SECSTAT/
│
├── README.md                                  — M1 [Rayan]
├── ROLES.md                                   — M1 [Rayan]
├── CONTRIBUTING.md                            — M1 [Rayan]
│
├── docs/                                      — M1 [Rayan] (project-level docs)
│   ├── ARCHITECTURE.md                        — M1 [Rayan]
│   ├── API_CONTRACT.md                        — M1 [Rayan]
│   ├── PROJECT_PLAN.md                        — M1 [Rayan]
│   ├── TESTING.md                             — M1 [Rayan] (with M10 [Omar Tarek])
│   └── REPRODUCIBILITY.md                     — M1 [Rayan] (with M10 [Omar Tarek])
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
│   ├── generate_dataset.py                    — M9 [Tamim]
│   └── scenarios.json                         — M9 [Tamim]
│
├── data/
│   ├── raw/                                   — M9 [Tamim]
│   ├── processed/                             — M9 [Tamim]
│   ├── DATA_DICTIONARY.md                     — M1 [Rayan] (from M9 [Tamim] input)
│   └── DATA_PROVENANCE.md                     — M1 [Rayan] (from M9 [Tamim] input)
│
├── r_engine/
│   ├── descriptive.R                          — M1 [Rayan] & M4 [Jomana]
│   ├── correlation.R                          — M1 [Rayan] & M4 [Jomana]
│   ├── simple_regression.R                    — M3 [Basouny]
│   ├── multiple_regression.R                  — M3 [Basouny]
│   ├── polynomial_regression.R                — M3 [Basouny]
│   ├── prediction.R                           — M3 [Basouny]
│   ├── regression_plots.R                     — M3 [Basouny]
│   ├── anova_one_way.R                        — M1 [Rayan] & M3 [Basouny]
│   ├── posthoc.R                              — M1 [Rayan] & M3 [Basouny]
│   ├── diagnostics.R                          — M4 [Jomana]
│   ├── model_comparison.R                     — M4 [Jomana]
│   └── validation_tests.R                     — M4 [Jomana]
│
├── backend/
│   ├── app.py                                 — M1 [Rayan]
│   ├── config.py                              — M1 [Rayan]
│   ├── database.py                            — M5 [Haneen Ali]
│   │
│   ├── routes/                                — M1 [Rayan]
│   │   ├── simulation.py                      — M1 [Rayan]
│   │   ├── datasets.py                        — M1 [Rayan]
│   │   ├── analysis.py                        — M1 [Rayan]
│   │   ├── prediction.py                      — M1 [Rayan]
│   │   └── reports.py                         — M1 [Rayan]
│   │
│   ├── services/
│   │   ├── simulation_service.py              — M5 [Haneen Ali]
│   │   ├── dataset_service.py                 — M5 [Haneen Ali]
│   │   ├── analysis_service.py                — M6 [Haneen]
│   │   ├── prediction_service.py              — M6 [Haneen]
│   │   └── report_service.py                  — M5 [Haneen Ali]
│   │
│   ├── r_engine/
│   │   └── r_runner.py                        — M6 [Haneen]
│   │
│   └── utils/                                 — M1 [Rayan]
│       ├── validators.py                      — M1 [Rayan]
│       └── helpers.py                         — M1 [Rayan]
│
├── frontend/
│   ├── index.html                             — M1 [Rayan]
│   │
│   ├── pages/
│   │   ├── predictor.html                     — M2 [Remas] & M8 [Nabila]
│   │   ├── simulation.html                    — M7 [Abdelrahman]
│   │   ├── datasets.html                      — M7 [Abdelrahman]
│   │   ├── regression.html                    — M8 [Nabila]
│   │   ├── traffic_levels.html                — M8 [Nabila]
│   │   ├── diagnostics.html                   — M8 [Nabila]
│   │   ├── model_comparison.html              — M8 [Nabila]
│   │   └── reports.html                       — M8 [Nabila]
│   │
│   ├── css/                                   
│   │   ├── style.css                          — M1 [Rayan] & M8 [Nabila]
│   │   ├── layout.css                         — M1 [Rayan] & M8 [Nabila]
│   │   └── pages.css                          — M1 [Rayan] & M8 [Nabila]
│   │
│   ├── js/
│   │   ├── app.js                             — M1 [Rayan] & M7 [Abdelrahman]
│   │   ├── api.js                             — M1 [Rayan] & M7 [Abdelrahman]
│   │   ├── charts.js                          — M8 [Nabila]
│   │   ├── dashboard.js                       — M7 [Abdelrahman]
│   │   ├── predictor.js                       — M2 [Remas] & M7 [Abdelrahman]
│   │   ├── simulation.js                      — M7 [Abdelrahman]
│   │   ├── datasets.js                        — M7 [Abdelrahman]
│   │   └── analysis.js                        — M8 [Nabila]
│   │
│   └── assets/                                
│       ├── images/                            
│       └── icons/                             
│
├── reports/
│   ├── README.md                              — unassigned (not specified in role docs)
│   ├── generated/                             — M5 [Haneen Ali]
│   └── figures/                               — M8 [Nabila]
│
└── tests/                                     — M10 [Omar Tarek]
    ├── test_reproducibility.py                — M10 [Omar Tarek]
    ├── test_analysis.py                       — M10 [Omar Tarek]
    └── test_prediction.py                     — M10 [Omar Tarek]
```