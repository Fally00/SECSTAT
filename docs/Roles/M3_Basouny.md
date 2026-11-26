# 2. Statistical Engineering — Regression & Prediction

**Member:** M3 [Basouny]

**Primary ownership:** Regression models, prediction, and regression plot data.

### Responsibilities

- Fit simple and multiple linear regression models and report coefficients, tests, and fit measures.
- Fit centered polynomial models and compare candidate degrees.
- Produce response-time predictions with prediction intervals for the selected model.
- Provide plot-ready fitted curves and observed values.
- Co-develop one-way ANOVA and Tukey HSD functions with M1.
- Keep function signatures and returned tables aligned with the function contract.

### Assigned files

```text
SECSTAT/
└── R/
    └── statistics/
        ├── simple_regression.R
        ├── multiple_regression.R
        ├── polynomial_regression.R
        ├── regression_plots.R
        ├── prediction.R
        ├── anova_one_way.R                (shared with M1 [Rayan])
        └── posthoc.R                     (shared with M1 [Rayan])
```

### Depends on

- **M1 [Rayan]:** function contract and shared-statistics conventions.
- **M2 [Remas]:** research hypotheses, model equations, and selection criteria.
- **M4 [Jomana]:** diagnostics and final model recommendation.
- **M9 [Tamim]:** reproducible datasets and simulator ground truth.
- **M10 [Omar Tarek]:** test failures and reference-calculation feedback.

### Provides to

- **M1 [Rayan]:** model function signatures and result tables for the function contract.
- **M2 [Remas]:** model outputs and predictor estimates.
- **M4 [Jomana]:** fitted models for diagnostics and model comparison.
- **M6 [Haneen]:** model and prediction function interfaces for the services.
- **M8 [Nabila]:** regression results and plot data for the interface modules.
- **M10 [Omar Tarek]:** reference outputs and expected prediction behavior.

### Timeline

| Phase | Task |
|---|---|
| 1. Research design & contracts | Agree model inputs and returned tables with M1 and M2 |
| 2. Foundations | Establish the simple-regression function |
| 3. Core build | Implement multiple and polynomial regression and plot data |
| 4. Integration | Implement prediction intervals using M4's selected model |
| 5. Testing & validation | Resolve diagnostic and test findings |
| 6. Final report & presentation | Deliver final model tables and figures |
