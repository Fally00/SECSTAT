
## M10 [Omar Tarek] — Quality Assurance & Reproducibility
 
### Responsibilities
 
- Test the API and input validation.
- Test the simulator: ranges, seeded reproducibility.
- Test R outputs against reference calculations and the simulation ground truth.
- Test the prediction service with known inputs and expected outputs.
- Test the complete flow: simulate → analyze → predict → report.
- Document bugs, verify fixes, and confirm the project runs on another machine.
- Contribute to `docs/TESTING.md` and `docs/REPRODUCIBILITY.md` through M1.
### Assigned files
 
```text
└── tests/
    ├── test_reproducibility.py
    ├── test_analysis.py
    └── test_prediction.py
```
 
### Depends on
 
- **Everyone:** merged code to test.
- **M4 [Jomana]:** reference values and validation results.
- **M9 [Tamim]:** seeds and expected dataset properties.
 
### Provides to
 
- **Everyone:** bug reports and verification of fixes.
- **M1 [Rayan]:** test results and sign-off before final delivery.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Review the API contract; plan test cases |
| 2. Foundations | Test setup; first tests for the simulator and datasets |
| 3. Core build | API, analysis and prediction tests as each part lands |
| 4. Integration | End-to-end test of the full chain |
| 5. Testing & validation | Reproducibility on a second machine; final bug sweep |
| 6. Final report & presentation | Test summary for the report and presentation |