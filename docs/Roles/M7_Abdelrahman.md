# 4. Shiny Interface — App Integration & Data Modules

**Member:** M7 [Abdelrahman]

**Primary ownership:** Dashboard, simulation, and dataset modules; shared app integration and regression/traffic modules.

### Responsibilities

- Integrate the Shiny application structure with M1.
- Build the dashboard, simulation controls, and dataset explorer.
- Maintain the selected dataset state for the other modules.
- Co-develop the regression and traffic-level modules with M8.
- Keep module calls aligned with service contracts and the shared theme.

### Assigned files

```text
SECSTAT/
├── app.R                               (shared with M1 [Rayan])
└── R/
    └── interface/
        ├── mod_dashboard.R
        ├── mod_simulation.R
        ├── mod_datasets.R
        ├── mod_regression.R              (shared with M8 [Nabila])
        └── mod_traffic_levels.R          (shared with M8 [Nabila])
```

### Depends on

- **M1 [Rayan]:** app structure, shared theme, and function contracts.
- **M2 [Remas]:** research context and predictor workflow.
- **M5 [Haneen Ali] and M6 [Haneen]:** dataset and analysis service results.
- **M8 [Nabila]:** shared chart helpers and co-owned module conventions.
- **M9 [Tamim]:** scenario definitions for simulation controls.
- **M10 [Omar Tarek]:** integration-test findings.

### Provides to

- **M1 [Rayan]:** app integration status and module handoff requirements.
- **M2 [Remas]:** app integration point and dashboard route to the predictor module.
- **M8 [Nabila]:** selected dataset state and shared regression/traffic modules.
- **M10 [Omar Tarek]:** end-to-end interface workflow for testing.

### Timeline

| Phase | Task |
|---|---|
| 1. Research design & contracts | Confirm service results and module boundaries |
| 2. Foundations | Integrate the app shell and data-module structure |
| 3. Core build | Implement simulation and dataset modules |
| 4. Integration | Add dashboard and selected-dataset state |
| 5. Testing & validation | Resolve module and end-to-end test findings |
| 6. Final report & presentation | Prepare the application demonstration flow |
