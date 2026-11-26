# 5. Data Engineering & Simulation

**Member:** M9 [Tamim]

**Primary ownership:** Seeded simulation, scenario definitions, and raw/processed dataset areas.

### Responsibilities

- Implement the R simulator from M2's variable definitions and expected relationships.
- Produce correlated predictors within plausible physical limits and nonlinear response time with noise.
- Preserve seeded reproducibility and document the generating equation and assumptions.
- Store raw datasets without overwriting them; record seed, simulator version, and parameters.
- Provide metadata for the data dictionary and provenance; respond to modeling feedback.

### Assigned files

```text
SECSTAT/
├── simulation/
│   ├── SIMULATION_MODEL.md
│   ├── generate_dataset.R
│   └── scenarios.json
└── data/
    ├── raw/
    └── processed/
```

### Depends on

- **M1 [Rayan]:** data dictionary and provenance format.
- **M2 [Remas]:** variable definitions and expected relationships.
- **M4 [Jomana]:** feedback on modelability and ground-truth validation.
- **M5 [Haneen Ali]:** dataset service and generator handoff requirements.
- **M10 [Omar Tarek]:** reproducibility-test findings.

### Provides to

- **M1 [Rayan]:** seed, version, parameters, and variable metadata for project data documentation.
- **M2 [Remas]:** datasets and ground truth for interpretation.
- **M3 [Basouny] and M4 [Jomana]:** reproducible datasets and generating equation.
- **M5 [Haneen Ali]:** generator interface and dataset outputs.
- **M7 [Abdelrahman]:** scenario definitions for simulation controls.
- **M10 [Omar Tarek]:** seeds and expected data properties for reproducibility tests.

### Timeline

| Phase | Task |
|---|---|
| 1. Research design & contracts | Translate M2's definitions into simulation assumptions |
| 2. Foundations | Implement the first seeded dataset and ground-truth notes |
| 3. Core build | Finalize scenarios, correlations, nonlinear response, and metadata |
| 4. Integration | Tune parameters with M4 and connect dataset storage with M5 |
| 5. Testing & validation | Verify seed stability, limits, and ground-truth checks |
| 6. Final report & presentation | Document the simulation method and limitations |
