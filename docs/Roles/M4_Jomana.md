# 2. Statistical Engineering — R
 
**Members:** M3 [Basouny] + M4 [Jomana]
 
**Primary ownership:** All statistical computation and validation in R. M3 builds the models; M4 tests and compares them. Each needs the other's output.

## M4 [Jomana] — Diagnostics, Model Comparison & Validation
 
### Responsibilities
 
- Regression diagnostics: residuals, normality, heteroscedasticity, multicollinearity (VIF), influential points.
- Model comparison: adjusted R², AIC/BIC, nested F-test, cross-validated RMSE. Recommend the final model.
- Validation: compare R output with reference datasets, and check that the fitted coefficients recover the simulation's true equation within a stated tolerance.
### Assigned files
 
```text
r_engine/
├── diagnostics.R
├── model_comparison.R
└── validation_tests.R
```
 
### Depends on
 
- **M3 [Basouny]:** fitted models.
- **M9 [Tamim  ]:** the ground-truth equation and datasets.
- **M2 [Remas  ]:** model selection criteria.
- **M1 [Rayan  ]:** JSON structure.
### Provides to
 
- **M2 [Remas], M3 [Basouny], M6 [Haneen ali]:** the final model recommendation.
- **M9 [Tamim]:** feedback if the simulated data cannot be modeled well (for example, too little nonlinearity or extreme collinearity).
- **M10 [Omar Tarek]:** validation results and reference values for tests.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Agree selection criteria with M2 and JSON output with M1 |
| 2. Foundations | Diagnostics scripts on a first simulated dataset from M9 |
| 3. Core build | Model comparison and validation tests |
| 4. Integration | Recommend the final model; share with M2, M3 and M6 |
| 5. Testing & validation | Run the full validation against ground truth; report to M9 and M10 |
| 6. Final report & presentation | Provide diagnostics and comparison results for the paper |
 
---