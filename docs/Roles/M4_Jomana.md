# 2. Statistical Engineering — Diagnostics & Validation

**Member:** M4 [Jomana]

**Primary ownership:** Regression diagnostics, model comparison, and validation; shared descriptive and correlation statistics.

### Responsibilities

- Diagnose residual behavior, normality, heteroscedasticity, multicollinearity, and influential observations.
- Compare candidate models using adjusted R², AIC/BIC, nested tests, and cross-validated RMSE.
- Recommend the final predictor and validate fitted results against references and simulation ground truth.
- Co-develop the shared descriptive and correlation functions with M1.

### Assigned files

```text
SECSTAT/
└── R/
    └── statistics/
        ├── diagnostics.R
        ├── model_comparison.R
        ├── validation_tests.R
        ├── descriptive.R                   (shared with M1 [Rayan])
        └── correlation.R                   (shared with M1 [Rayan])
```

### Depends on

- **M1 [Rayan]:** function contract and shared-statistics conventions.
- **M2 [Remas]:** hypotheses and model-selection criteria.
- **M3 [Basouny]:** fitted models and candidate predictions.
- **M9 [Tamim]:** datasets and the documented generating equation.
- **M10 [Omar Tarek]:** reference-test results and test failures.

### Provides to

- **M1 [Rayan]:** shared statistics results and final model recommendation.
- **M2 [Remas]:** final model choice and validation findings for interpretation.
- **M3 [Basouny]:** diagnostics and model-selection feedback.
- **M6 [Haneen]:** model recommendation and expected result shapes.
- **M8 [Nabila]:** diagnostic and model-comparison tables for the interface.
- **M9 [Tamim]:** feedback when simulated data cannot support the planned models.
- **M10 [Omar Tarek]:** validation results and reference values.

### Timeline

| Phase | Task |
|---|---|
| 1. Research design & contracts | Agree criteria and result tables with M1 and M2 |
| 2. Foundations | Diagnose the first reproducible dataset |
| 3. Core build | Implement diagnostics, comparisons, and validation |
| 4. Integration | Recommend the final model to M2, M3, and M6 |
| 5. Testing & validation | Check against simulation ground truth and reference values |
| 6. Final report & presentation | Deliver diagnostic and comparison results |
