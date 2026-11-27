
## M5 [Haneen] — R Integration, Analysis & Prediction Services
 
### Responsibilities
 
- Connect Flask to R through Rscript with safe timeouts and temporary files.
- Prepare and validate data before analysis (required columns, types, missing values, plausible ranges) using the validators and helpers written by M1.
- Run analysis jobs and parse the JSON returned by R.
- Prediction service: call `prediction.R` with the chosen model and compute the load level from the thresholds in `config.py`. These thresholds are fixed bands, not statistics, so they are not calculated in R.
- Turn R errors into clear API errors.
### Assigned files
 
```text
backend/
├── services/
│   ├── analysis_service.py
│   └── prediction_service.py
└── r_engine/
    └── r_runner.py
```
 
### Depends on
 
- **M3 [Basouny], M1 [Rayan], M9 [Omar Tarek]:** R scripts and their JSON output (M1 wrote the descriptive, correlation, ANOVA, Tukey, and diagnostics scripts; M3 wrote regression, model comparison, and prediction; M9 wrote validation tests).
- **M4 [Jomana]:** datasets to analyze.
- **M1 [Rayan]:** API contract, routes, `validators.py` and `helpers.py`.
### Provides to
 
- **M1 [Rayan]:** analysis and prediction services for the routes.
- **M4 [Jomana]:** results to store.
- **M2 [Remas], M6 [Abdelrahman], M7 [Nabila]:** the numbers behind every statistical page and the predictor.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Agree R input/output format with M3, M1, and M9 [Omar Tarek] |
| 2. Foundations | `r_runner.py` with timeouts; plug in M1's validators |
| 3. Core build | `analysis_service.py` for every R script |
| 4. Integration | `prediction_service.py` and load level bands; error handling |
| 5. Testing & validation | Test edge cases (bad data, R failures, timeouts) with M9 [Omar Tarek] |
| 6. Final report & presentation | Document the R integration for the technical documentation |
 
---