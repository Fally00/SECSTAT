 
# 4. Frontend Engineering — Web Interface
 
**Members:** M7 [Abdelrahman] + M8 [Nabila]
 
**Primary ownership:** Data pages, dashboard, statistical interfaces and shared charts. M8's chart helpers are used by M7 and M2, and M7's dataset selection is used by M8.
 

## M8 [Nabila] — Statistical Interfaces & Visualization
 
### Responsibilities
 
- Build the Regression Lab, Traffic Level Comparison, Diagnostics Lab, Model Comparison and Reports pages.
- Build `charts.js`, the shared Plotly helpers (scatter with fitted curves, residual plots, Q-Q plot, comparison charts), and share it early with M2 and M7.
- Display coefficient tables, p-values and model metrics clearly.
- Loading, validation and error states.
### Assigned files
#### file naming is purely optional and you can arrange and adjust it however you like 

```text
frontend/
├── pages/
│   ├── regression.html
│   ├── traffic_levels.html
│   ├── diagnostics.html
│   ├── model_comparison.html
│   └── reports.html
└── js/
    ├── analysis.js
    └── charts.js
```
 
### Depends on
 
- **M1 [Rayan]:** design system, `api.js`, routes.
- **M3 [Basouny], M4 [Jomana], M6 [Haneen], M1 [Rayan]:** the result structure and the numbers (M1 wrote the descriptive, correlation, ANOVA and Tukey scripts).
- **M7 [Abdelrahman]:** the selected dataset.
### Provides to
 
- **M2 [Remas], M7 [Abdelrahman]:** `charts.js`.
- **M2 [Remas]:** displayed results used to interpret findings.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Review the contract; list the chart types needed by M2 and M7 |
| 2. Foundations | `charts.js` v1 so M2 and M7 can start |
| 3. Core build | Regression, diagnostics and model comparison pages |
| 4. Integration | Traffic levels and reports pages; real data end to end |
| 5. Testing & validation | Fix display and error-state bugs with M10 |
| 6. Final report & presentation | Final figures for the paper and presentation |
 
---