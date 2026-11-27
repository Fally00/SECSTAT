
# 5. Data Engineering & QA
 
**Members:** M8 [Tamim] + M9 [Omar Tarek]
 
**Primary ownership:** The dataset everything is built on, and the verification of the whole chain.
 
## M8 [Tamim] — Simulation & Data Engineering
 
### Responsibilities
 
- Build the simulator from M2's variable definitions:
  - scenarios for normal, elevated and DDoS-like traffic;
  - correlated predictors that respect physical limits (CPU and bandwidth cannot exceed 100%);
  - a nonlinear `Response_Time` with noise;
  - seeded, reproducible generation.
- Record the true generating equation and all assumptions in `SIMULATION_MODEL.md`.
- Generate datasets into `data/raw/` (never overwritten) and processed copies into `data/processed/`.
- Give M1 everything needed for the data dictionary and provenance (seed, version, parameters, variable details as generated); M1 writes and maintains them.
- Sanity-check each dataset: plausible ranges, no impossible values, believable correlations.
- Version the simulator. Any change is announced to M1, M3 and M9 [Omar Tarek] because it changes the results.
### Assigned files
 
```text
simulation/
├── SIMULATION_MODEL.md
├── generate_dataset.py
└── scenarios.json
 
data/
├── raw/
└── processed/
```
 
### Depends on
 
- **M2 [Remas ]:** variable definitions and expected relationships.
- **M1 [Rayan], M9 [Omar Tarek]:** feedback on whether the data can be modeled well.
- **M4 [Jomana]:** how the generator is called from the backend.
### Provides to
 
- **M1 [Rayan], M3 [Basouny], M4 [Jomana]:** datasets and the ground-truth equation.
- **M6 [Abdelrahman]:** scenario definitions for the Simulation Lab.
- **M9 [Omar Tarek]:** seeds and expected properties for reproducibility and validation tests.
- **M1 [Rayan]:** seed, version and parameters of each dataset for the data dictionary and provenance.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Turn M2's definitions into a simulation design; agree the generator interface with M4 |
| 2. Foundations | Simulator v1 and first dataset with notes for M1's data dictionary; deliver to M1 and M3 early |
| 3. Core build | Scenarios, nonlinearity and noise; sanity checks; hand seed, version and parameters to M1 for provenance |
| 4. Integration | Final datasets; tune parameters with M1 and M9 [Omar Tarek]'s feedback |
| 5. Testing & validation | Support M9 [Omar Tarek]'s ground-truth validation and reproducibility tests |
| 6. Final report & presentation | Write up the simulation method for the paper |