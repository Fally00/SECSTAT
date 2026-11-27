
## M9 [Omar Tarek] — Quality Assurance, Validation & Reproducibility
 
### Responsibilities
 
- Test the API and input validation.
- Test the simulator: ranges, seeded reproducibility.
- Validation (`validation_tests.R`): compare R output with reference datasets, and check that the fitted coefficients recover the simulation's true equation within a stated tolerance.
- Test the prediction service with known inputs and expected outputs.
- Test the complete flow: simulate → analyze → predict → report.
- Document bugs, verify fixes, and confirm the project runs on another machine.
- Contribute to `docs/TESTING.md` and `docs/REPRODUCIBILITY.md` through M1.
### Assigned files
 
```text
├── r_engine/
│   └── validation_tests.R
└── tests/
    ├── test_reproducibility.py
    ├── test_analysis.py
    └── test_prediction.py
```
 
### Depends on
 
- **Everyone:** merged code to test.
- **M1 [Rayan]:** diagnostics results and JSON structure.
- **M3 [Basouny]:** fitted models and final model choice to validate.
- **M8 [Tamim]:** ground-truth equation, seeds, and expected dataset properties.
 
### Provides to
 
- **Everyone:** bug reports and verification of fixes.
- **M8 [Tamim]:** feedback if the simulated data cannot be modeled well (for example, too little nonlinearity or extreme collinearity).
- **M2 [Remas], M3 [Basouny]:** validation results against ground truth.
- **M1 [Rayan]:** test results, validation results, and sign-off before final delivery.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Review the API contract; plan test cases and validation tolerance |
| 2. Foundations | Test setup; first tests for the simulator and datasets |
| 3. Core build | API, analysis and prediction tests as each part lands; draft `validation_tests.R` |
| 4. Integration | End-to-end test of the full chain |
| 5. Testing & validation | Run full validation against ground truth; reproducibility on a second machine; final bug sweep |
| 6. Final report & presentation | Test and validation summary for the report and presentation |