
# 2. Statistical Engineering — R
 
**Members:** M3 [Basouny] + M4 [Jomana]
 
**Primary ownership:** All statistical computation and validation in R. M3 builds the models; M4 tests and compares them. Each needs the other's output.
 
## M3 [Basouny] — Regression, Polynomial Models & Prediction
 
### Responsibilities
 
- Simple and multiple linear regression (coefficients, p-values, confidence intervals, R², adjusted R², F-test).
- Polynomial regression with centered terms, comparing candidate degrees.
- Prediction for new inputs with prediction intervals, used by the Impact Predictor.
- Plot-ready data for regression charts (fits, curves).
- Return structured JSON exactly as defined in `docs/API_CONTRACT.md`.
### Assigned files
 
```text
r_engine/
├── simple_regression.R
├── multiple_regression.R
├── polynomial_regression.R
├── regression_plots.R
└── prediction.R
```
 
### Depends on
 
- **M2 [Remas ]:** model equations and hypotheses.
- **M9 [Tamim ]:** the dataset.
- **M1 [Rayan ]:** JSON structure.
- **M4 [Jomana]:** the final model choice, which `prediction.R` uses.
### Provides to
 
- **M4 [Jomana]:** fitted models to diagnose and compare.
- **M6 [Haneen]:** R scripts and results, which reach the interface through M1's routes.
- **M2 [Remas], M8 [Nabila]:** model output and plot data for the predictor and regression pages.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Agree equations with M2 and JSON output with M1 |
| 2. Foundations | Simple regression script (descriptive and correlation are written by M1) |
| 3. Core build | Multiple and polynomial regression; plot data |
| 4. Integration | `prediction.R` with intervals; use M4's chosen model |
| 5. Testing & validation | Fix issues found by M4 and M10; check against reference calculations |
| 6. Final report & presentation | Provide final model tables and figures for the paper |