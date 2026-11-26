# 4. Shiny Interface — Statistics & Visualization

**Member:** M8 [Nabila]

**Primary ownership:** Statistical modules, shared chart helpers, and report figures; shared theme and predictor/regression/traffic modules.

### Responsibilities

- Build diagnostics, model comparison, and report modules.
- Co-develop predictor with M2 and regression/traffic modules with M7.
- Implement shared plotly chart helpers for fitted curves, residuals, Q-Q plots, and comparisons.
- Display coefficients, p-values, intervals, and model metrics clearly.
- Keep loading, validation, and error states explicit and consistent with the shared theme.

### Assigned files

```text
SECSTAT/
├── R/
│   ├── core/
│   │   └── theme.R                       (shared with M1 [Rayan])
│   └── interface/
│       ├── mod_predictor.R               (shared with M2 [Remas])
│       ├── mod_regression.R              (shared with M7 [Abdelrahman])
│       ├── mod_traffic_levels.R          (shared with M7 [Abdelrahman])
│       ├── mod_diagnostics.R
│       ├── mod_model_comparison.R
│       ├── mod_reports.R
│       └── charts.R
└── reports/
    └── figures/
```

### Depends on

- **M1 [Rayan]:** app structure, shared theme conventions, and function contract.
- **M2 [Remas]:** research and predictor display requirements.
- **M3 [Basouny], M4 [Jomana], and M6 [Haneen]:** statistics and service result tables.
- **M7 [Abdelrahman]:** selected dataset state and shared regression/traffic modules.
- **M10 [Omar Tarek]:** interface and integration test findings.

### Provides to

- **M1 [Rayan]:** shared theme requirements and interface integration status.
- **M2 [Remas]:** shared chart helpers and predictor visualization.
- **M7 [Abdelrahman]:** chart helpers and co-developed interface modules.
- **M10 [Omar Tarek]:** statistical display flows for interface tests.

### Timeline

| Phase | Task |
|---|---|
| 1. Research design & contracts | Agree chart types and display tables with M2 and M7 |
| 2. Foundations | Establish shared theme and chart-helper interfaces |
| 3. Core build | Implement regression, diagnostics, and model-comparison modules |
| 4. Integration | Connect traffic-level, predictor, and report modules |
| 5. Testing & validation | Resolve display and error-state findings |
| 6. Final report & presentation | Deliver final figures and presentation views |
