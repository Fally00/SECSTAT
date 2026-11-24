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
- Write the supporting R scripts: descriptive statistics, correlation, one-way ANOVA and Tukey HSD, returning JSON as defined in the API contract.
- Write `validators.py` and `helpers.py` (required columns, types, plausible ranges, agreed with M2 and M9) for M5 and M6 to use.
- Maintain the data dictionary and data provenance from the information M9 provides.
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
├── anova_one_way.R        (from M4 [Jomana] )
└── posthoc.R              (from M4 [Jomana] )
 
backend/utils/
├── validators.py          (from M6 [Haneen] )
└── helpers.py             (from M6 [Haneen] )
 
data/
├── DATA_DICTIONARY.md     (from M9 [Tamim]  )
└── DATA_PROVENANCE.md     (from M9 [Tamim]  )
```
 
---
### Depends on
 
- **M2 [Remas]:** research scope and hypotheses for the plan and architecture; plausible variable ranges for the validators.
- **M3 [Basouny] , M4 [Jomana]:** the JSON structure each R script returns (M1's own R scripts follow the same structure).
- **M5 [Haneen Ali], M6 [Haneen]:** the services the routes call.
- **M9 [Tamim]:** seed, version and parameters of each dataset for the data dictionary and provenance.
### Provides to
 
- **Everyone:** API contract, mock responses, architecture decisions.
- **M2 [Remas], M7 [Abdelrahman], M8 [Nabila]:** `api.js`, shared layout and design system.
- **M5 [Haneen Ali], M6 [Haneen]:** `validators.py` and `helpers.py`.
- **M6 [Haneen], M8 [Nabila]:** the descriptive, correlation, ANOVA and Tukey R scripts and their results.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Draft `API_CONTRACT.md` with mock responses; project plan and architecture |
| 2. Foundations | Flask app, config, route skeleton; shared layout and design system; `validators.py` and `helpers.py` v1; `descriptive.R` and `correlation.R` |
| 3. Core build | Implement routes against M5/M6 services; maintain `api.js`; `anova_one_way.R` and `posthoc.R`; draft the data dictionary from M9's first dataset |
| 4. Integration | Wire all routes to the real services; resolve contract mismatches; data provenance for the final datasets |
| 5. Testing & validation | Review PRs and bug fixes; final contract check |
| 6. Final report & presentation | Finalize documentation; coordinate paper and presentation |
 
---