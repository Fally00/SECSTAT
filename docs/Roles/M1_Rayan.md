# 1. Leadership, Research & Core Application
 
**Members:** M1 (Project Leader) + M2 (Research Co-Lead)
 
## M1 [Rayan] — Project Leader
 
**Primary ownership:** Project documentation, API contract, Flask foundation, routes, shared frontend foundation, plus a few small files taken from the R, backend and data teams to balance the workload.
 
### Responsibilities
 
- Lead and coordinate all five teams.
- Create and maintain all project-level Markdown documentation.
- Define the overall architecture.
- Build the Flask application foundation and organize the API routes.
- Write and maintain `docs/API_CONTRACT.md` with the R, backend and frontend teams, including mock responses so teams can build in parallel.
- Build the shared frontend layout and design system.
- Review pull requests and manage integration.
- Track milestones and make sure the project meets the course requirements.
- Write the supporting R scripts: descriptive statistics, correlation, one-way ANOVA, Tukey HSD, and regression diagnostics (`diagnostics.R`: residuals, normality, heteroscedasticity, multicollinearity/VIF, influential points), returning JSON as defined in the API contract.
- Write `validators.py` and `helpers.py` (required columns, types, plausible ranges, agreed with M2 and M8) for M4 and M5 to use.
- Maintain the data dictionary and data provenance from the information M8 provides.
### Assigned files
 
```text
README.md
ROLES.md
CONTRIBUTING.md
 
docs/
├── ARCHITECTURE.md
├── API_CONTRACT.md
├── PROJECT_PLAN.md
├── TESTING.md
└── REPRODUCIBILITY.md
 
backend/
├── app.py
├── config.py
└── routes/
    ├── simulation.py
    ├── datasets.py
    ├── analysis.py
    ├── prediction.py
    └── reports.py
 
frontend/
├── index.html
├── css/
│   ├── style.css
│   ├── layout.css
│   └── pages.css
├── js/
│   ├── app.js
│   └── api.js
└── assets/
    ├── images/
    └── icons/
```
 
**Supporting files taken from other teams**
 
```text
r_engine/
├── descriptive.R          (from M3 [Basouny])
├── correlation.R          (from M3 [Basouny])
├── anova_one_way.R
├── posthoc.R
└── diagnostics.R          (residuals, normality, heteroscedasticity, VIF, influential points)
 
backend/utils/
├── validators.py          (from M5 [Haneen] )
└── helpers.py             (from M5 [Haneen] )
 
data/
├── DATA_DICTIONARY.md     (from M8 [Tamim]  )
└── DATA_PROVENANCE.md     (from M8 [Tamim]  )
```
 
---
### Depends on
 
- **M2 [Remas]:** research scope and hypotheses for the plan and architecture; plausible variable ranges for the validators.
- **M3 [Basouny]:** fitted models (for `diagnostics.R`) and the JSON structure each R script returns (M1's own R scripts follow the same structure).
- **M4 [Jomana], M5 [Haneen]:** the services the routes call.
- **M8 [Tamim]:** seed, version and parameters of each dataset for the data dictionary and provenance.
### Provides to
 
- **Everyone:** API contract, mock responses, architecture decisions.
- **M2 [Remas], M6 [Abdelrahman], M7 [Nabila]:** `api.js`, shared layout and design system.
- **M4 [Jomana], M5 [Haneen]:** `validators.py` and `helpers.py`.
- **M5 [Haneen], M7 [Nabila]:** the descriptive, correlation, ANOVA, Tukey and diagnostics R scripts and their results.
- **M3 [Basouny], M9 [Omar Tarek]:** regression diagnostics results (`diagnostics.R`).
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Draft `API_CONTRACT.md` with mock responses; project plan and architecture |
| 2. Foundations | Flask app, config, route skeleton; shared layout and design system; `validators.py` and `helpers.py` v1; `descriptive.R`, `correlation.R`, and `diagnostics.R` on first simulated dataset |
| 3. Core build | Implement routes against M4/M5 services; maintain `api.js`; `anova_one_way.R` and `posthoc.R`; draft the data dictionary from M8's first dataset |
| 4. Integration | Wire all routes to the real services; resolve contract mismatches; data provenance for the final datasets |
| 5. Testing & validation | Review PRs and bug fixes; final contract check |
| 6. Final report & presentation | Finalize documentation; coordinate paper and presentation |
 
---