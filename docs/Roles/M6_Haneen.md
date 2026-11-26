# 3. R Services — Analysis & Prediction

**Member:** M6 [Haneen]

**Primary ownership:** Input validation, analysis orchestration, and prediction services.

### Responsibilities

- Validate required columns, types, missing values, and plausible ranges using shared core validators.
- Call the R statistics functions directly and return their documented result structures.
- Provide prediction intervals and load-level bands using configuration from R core.
- Report invalid inputs and analysis failures explicitly to callers.
- Coordinate analysis and prediction result persistence with M5.

### Assigned files

```text
SECSTAT/
└── R/
    ├── services/
    │   ├── analysis_service.R
    │   └── prediction_service.R
    └── core/
        └── validators.R
```

### Depends on

- **M1 [Rayan]:** function contract, shared helpers, and configuration conventions.
- **M3 [Basouny] and M4 [Jomana]:** statistics function inputs and return structures.
- **M5 [Haneen Ali]:** datasets and metadata to analyze.
- **M10 [Omar Tarek]:** validation and service test findings.

### Provides to

- **M1 [Rayan]:** analysis and prediction service interfaces for app integration.
- **M2 [Remas], M7 [Abdelrahman], and M8 [Nabila]:** analysis and prediction result tables for their modules.
- **M5 [Haneen Ali]:** analysis and prediction results to persist.
- **M10 [Omar Tarek]:** service behavior and validation cases for tests.

### Timeline

| Phase | Task |
|---|---|
| 1. Research design & contracts | Agree service inputs and outputs with M1, M3, and M4 |
| 2. Foundations | Implement shared validation and dataset checks |
| 3. Core build | Orchestrate the requested statistics functions |
| 4. Integration | Connect prediction, intervals, and configured load bands |
| 5. Testing & validation | Resolve invalid-input and analysis-failure findings |
| 6. Final report & presentation | Document service behavior for the technical handoff |
