# 3. R Services — Data, Persistence & Reports

**Member:** M5 [Haneen Ali]

**Primary ownership:** Dataset persistence, simulation and dataset services, and report generation.

### Responsibilities

- Provide database initialization and data access using the agreed R database interface.
- Run the R simulator through the simulation service and store immutable raw datasets with seed and version metadata.
- Import, preview, validate, and prepare datasets for analysis.
- Render reports from analysis results and figures.
- Coordinate stored result shapes with M6 and the interface owners.

### Assigned files

```text
SECSTAT/
├── R/
│   └── services/
│       ├── database.R
│       ├── simulation_service.R
│       ├── dataset_service.R
│       └── report_service.R
└── reports/
    ├── report_template.Rmd
    └── generated/
```

### Depends on

- **M1 [Rayan]:** data provenance conventions, shared helpers, and service contracts.
- **M6 [Haneen]:** analysis and prediction result shapes to persist.
- **M9 [Tamim]:** simulator inputs, dataset format, and version metadata.
- **M10 [Omar Tarek]:** test findings for persistence and reproducibility.

### Provides to

- **M1 [Rayan]:** dataset metadata for documentation and service integration details.
- **M2 [Remas], M7 [Abdelrahman], and M8 [Nabila]:** dataset and report service results for their modules.
- **M6 [Haneen]:** stored datasets and dataset metadata for analysis.
- **M9 [Tamim]:** generator integration feedback.
- **M10 [Omar Tarek]:** dataset fixtures and persistence behavior for tests.

### Timeline

| Phase | Task |
|---|---|
| 1. Research design & contracts | Agree data schema and generator handoff with M1 and M9 |
| 2. Foundations | Establish database and dataset operations |
| 3. Core build | Implement simulation, dataset, and result persistence |
| 4. Integration | Render reports from real analysis results |
| 5. Testing & validation | Verify raw data is preserved and metadata is complete |
| 6. Final report & presentation | Deliver report template and export flow |
