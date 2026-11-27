
# 3. Backend Engineering — Python & Flask
 
**Members:** M4 [Jomana] + M5 [Haneen]
 
**Primary ownership:** Backend services, database, and communication between Flask and R. M4 provides the data, M5 runs the analysis, and each depends on the other.
 
## M4 [Jomana] — Data, Storage & Reports
 
### Responsibilities
 
- Database models and CRUD for datasets, analysis runs, model results and reports.
- Simulation service: call the simulator in `simulation/`, store the output as immutable raw data with its seed and version.
- Dataset service: upload, column validation, previews, processed copies.
- Report service: assemble reports from stored results and figures, with exports.
- Support M1 with the business logic behind the routes.
### Assigned files
 
```text
backend/
├── database.py
└── services/
    ├── simulation_service.py
    ├── dataset_service.py
    └── report_service.py
```
 
### Depends on
 
- **M8 [Tamim ]:** the interface for calling the generator.
- **M5 [Haneen]:** results to store.
- **M1 [Rayan ]:** route requirements, `validators.py` and `helpers.py`.
### Provides to
 
- **M5 [Haneen]:** stored datasets to send to R.
- **M1 [Rayan ]:** services for the simulation, dataset and report routes.
- **M6 [Abdelrahman], M7 [Nabila]:** datasets and reports shown in the interface.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Agree the database schema and generator interface with M1 and M8 [Tamim] |
| 2. Foundations | `database.py` and dataset CRUD |
| 3. Core build | Simulation and dataset services; store analysis results from M5 |
| 4. Integration | Report service on real results; connect to M1's routes |
| 5. Testing & validation | Fix data-handling bugs; check raw data is never overwritten |
| 6. Final report & presentation | Final report exports for the paper |
 