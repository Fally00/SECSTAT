# 5. Quality Assurance & Reproducibility

**Member:** M10 [Omar Tarek]

**Primary ownership:** testthat tests, recursive test setup, and test documentation shared with M1.

### Responsibilities

- Test simulator ranges, seeded reproducibility, and preserved metadata.
- Compare statistics and prediction results with reference calculations and simulation ground truth.
- Test the end-to-end flow from simulation through analysis, prediction, and reporting.
- Report defects, verify fixes, and check setup on another machine.
- Keep test and reproducibility documentation aligned with the implemented workflow.

### Assigned files

```text
SECSTAT/
├── tests/
│   └── testthat/
│       ├── helper-load.R
│       ├── test-reproducibility.R
│       ├── test-analysis.R
│       └── test-prediction.R
└── docs/
    ├── TESTING.md                       (shared with M1 [Rayan])
    └── REPRODUCIBILITY.md               (shared with M1 [Rayan])
```

### Depends on

- **M1 [Rayan]:** test and reproducibility requirements.
- **M2 [Remas]:** hypotheses and expected research behavior.
- **M3 [Basouny] and M4 [Jomana]:** model references and validation values.
- **M5 [Haneen Ali] and M6 [Haneen]:** service and persistence behavior.
- **M7 [Abdelrahman] and M8 [Nabila]:** integrated module flows.
- **M9 [Tamim]:** seeds and expected simulator properties.

### Provides to

- **Everyone:** reproducible test findings, defect reports, and verification of fixes.
- **M1 [Rayan]:** test results and readiness findings for project documentation.

### Timeline

| Phase | Task |
|---|---|
| 1. Research design & contracts | Plan tests from the function contract and hypotheses |
| 2. Foundations | Establish recursive loading and simulator reproducibility tests |
| 3. Core build | Add focused analysis, prediction, and service tests |
| 4. Integration | Exercise the full app workflow |
| 5. Testing & validation | Verify reproducibility and resolve final defects |
| 6. Final report & presentation | Provide the test summary |
