
# 4. Frontend Engineering — Web Interface
 
**Members:** M7 [Abdelrahman] + M8 [Nabila]
 
**Primary ownership:** Data pages, dashboard, statistical interfaces and shared charts. M8's chart helpers are used by M7 and M2, and M7's dataset selection is used by M8.
 
## M7 [Abdelrahman] — Simulation, Datasets & Dashboard
 
### Responsibilities
 
- Simulation Lab page: set sample size, scenario mix and seed, generate and preview a dataset.
- Dataset Explorer: upload, preview table, variable types, missing values, summaries and basic charts.
- Dashboard: overview of datasets, latest model results and a link to the Impact Predictor.
- Keep the selected dataset available to the other pages.
- Consistent responsive behavior.
### Assigned files
#### file naming is purely optional and you can arrange and adjust it however you like 
 
```text
frontend/
├── pages/
│   ├── simulation.html
│   └── datasets.html
└── js/
    ├── simulation.js
    ├── datasets.js
    └── dashboard.js
```
 
### Depends on
 
- **M1 [Rayan]:** design system and `api.js`.
- **M9 [Tamim]:** scenario definitions for the Simulation Lab controls.
- **M5 [Haneen Ali], M1 [Rayan]:** simulation and dataset endpoints.
- **M8 [Nabila]:** `charts.js`.
### Provides to
 
- **M8 [Nabila]:** the selected dataset used by the analysis pages.
- **M2 [Remas ]:** dashboard entry point to the predictor.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Review the API contract for dataset and simulation endpoints |
| 2. Foundations | Dataset Explorer layout with mock data |
| 3. Core build | Simulation Lab and Dataset Explorer against the real API |
| 4. Integration | Dashboard; share the selected dataset with M8's pages |
| 5. Testing & validation | Fix UI bugs; responsive checks |
| 6. Final report & presentation | Screenshots and demo flow |
 