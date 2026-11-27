
# 2. Statistical Engineering — R
 
**Members:** M3 [Basouny] (with M1 [Rayan] supporting diagnostics/supporting stats and M9 [Omar Tarek] supporting validation)
 
**Primary ownership:** Statistical modeling, model comparison, and prediction in R. M3 builds and compares the models; M1 runs diagnostics and supporting tests; M9 validates against ground truth.
 
## M3 [Basouny] — Regression, Polynomial Models, Model Comparison & Prediction
 
### Responsibilities
 
- Simple and multiple linear regression (coefficients, p-values, confidence intervals, R², adjusted R², F-test).
- Polynomial regression with centered terms, comparing candidate degrees.
- Model comparison (`model_comparison.R`): adjusted R², AIC/BIC, nested F-test, cross-validated RMSE, and recommending the final model.
- Prediction for new inputs with prediction intervals, used by the Impact Predictor.
- Plot-ready data for regression charts (fits, curves).
- Return structured JSON exactly as defined in `docs/API_CONTRACT.md`.
### Assigned files
 
```text
r_engine/
├── simple_regression.R
├── multiple_regression.R
├── polynomial_regression.R
├── model_comparison.R
├── regression_plots.R
└── prediction.R
```
 
### Depends on
 
- **M2 [Remas ]:** model equations, hypotheses, and model selection criteria.
- **M8 [Tamim ]:** the dataset.
- **M1 [Rayan ]:** JSON structure and regression diagnostics (`diagnostics.R`).
### Provides to
 
- **M1 [Rayan]:** fitted models to diagnose (`diagnostics.R`).
- **M5 [Haneen]:** R scripts, final model recommendation, and results, which reach the interface through M1's routes.
- **M2 [Remas], M7 [Nabila]:** model output, final model recommendation, and plot data for the predictor and regression pages.
- **M9 [Omar Tarek]:** fitted models and final model choice for ground-truth validation (`validation_tests.R`).
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Agree equations and selection criteria with M2 and JSON output with M1 |
| 2. Foundations | Simple regression script (descriptive, correlation, and diagnostics are written by M1) |
| 3. Core build | Multiple and polynomial regression; model comparison (`model_comparison.R`); plot data |
| 4. Integration | `prediction.R` with intervals using the final chosen model; share recommendation with M2 and M5 |
| 5. Testing & validation | Fix issues found by M1's diagnostics and M9 [Omar Tarek]'s validation; check against reference calculations |
| 6. Final report & presentation | Provide final model tables, comparison results, and figures for the paper |