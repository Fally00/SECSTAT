# SECSTAT — Team Roles & Responsibilities
 
## Team Structure
 
- **Team size:** 10 members
- **Project Leader:** Member 1
- **Structure:** 5 teams, 2 members per team
- **Workload balance:** Member 1 also owns a few small files from the R, backend-utils and data teams (listed under Member 1), so the heavier roles stay in balance with the rest.
Each member has clear responsibilities and file ownership. **No team works alone:** the Impact Predictor only works if every link in the delivery chain below works, so every role lists what it needs from other members and what it hands over.
 
---

##  Team Organization

The team has 10 members in 5 teams. The teams depend on each other through a delivery chain (research → data → statistics → backend → interface → testing), described in `ROLES.md`.

| Team | Members | Responsibility |
|---|---:|---|
| Leadership & Research | 2 | Architecture, API contract, research design, hypotheses, Impact Predictor page |
| R Engineering | 2 | Regression, polynomial models, prediction, diagnostics, model comparison, validation |
| Backend | 2 | Flask services, database, simulation service, R integration |
| Frontend | 2 | Data pages, dashboard, statistical interfaces, shared charts |
| Data & QA | 2 | Simulator and dataset, testing, reproducibility |

---

# How the Teams Depend on Each Other

## Development Roadmap

1. Research design and API contract.
2. Foundations: environment, project skeleton, simulator v1.
3. Core build: R engine, backend services, interface pages.
4. Integration: end-to-end prediction from dataset to Impact Predictor.
5. Testing and validation.
6. Final research paper and presentation.

---

## The delivery chain
 
```text
M2 defines variables & hypotheses
        ↓
M9 simulates the dataset (+ ground truth)
        ↓
M3 / M4 analyze it in R (models, diagnostics, comparison)
        ↓
M6 runs R and formats results        M5 stores datasets, runs, reports
        ↓                                   ↓
M1 exposes everything through the API (docs/API_CONTRACT.md)
        ↓
M7 / M8 / M2 show it in the interface
        ↓
M10 tests the whole chain end to end
```
 
## Dependency map
 
| Who needs it | From | What | Where it lives |
|---|---|---|---|
| M9 | M2 | Variable definitions, units, ranges, expected relationships | `research/VARIABLE_DICTIONARY.md` |
| M3, M4 | M2 | Model equations, hypotheses, model selection criteria | `research/HYPOTHESES.md`, `research/METHODOLOGY.md` |
| M3, M4, M5 | M9 | Generated dataset and the true generating equation | `data/raw/`, `simulation/SIMULATION_MODEL.md` |
| M6 | M3, M4, M1 | R scripts and the JSON structure they return | `r_engine/`, `docs/API_CONTRACT.md` |
| M6 | M5 | Datasets to pass to R | `dataset_service.py` |
| M5, M6 | M1 | Shared validators and helpers | `backend/utils/` |
| M1 | M9 | Seed, version and parameters of each dataset for the data dictionary and provenance | `data/DATA_DICTIONARY.md`, `data/DATA_PROVENANCE.md` |
| M5 | M6 | Analysis and prediction results to store | `analysis_service.py` |
| M1 | M5, M6 | Services behind every route | `backend/services/` |
| M7, M8, M2 | M1 | API routes, `api.js`, shared design system | `backend/routes/`, `frontend/` |
| M2, M7 | M8 | Shared Plotly chart helpers | `frontend/js/charts.js` |
| M8 | M7 | Selected dataset shared between pages | `frontend/js/app.js` |
| M2, M3, M6 | M4 | Which model is the final predictor | `r_engine/model_comparison.R` |
| M4 | M9 | Ground truth to check that the R engine recovers it | `simulation/SIMULATION_MODEL.md` |
| M10 | Everyone | Merged code, seeds, reference results | `tests/` |
| Everyone | M10 | Bug reports and test results | `docs/TESTING.md` |
 
**Example:** the Impact Predictor page (M2) needs a chart helper from M8, an endpoint from M1 and M6, a prediction script from M3, a model choice from M4, and a dataset from M9.
 
---
 
# Team Collaboration Rules
 
1. Every member is responsible for their assigned files and deliverables.
2. Project-level Markdown documentation is maintained by M1 [Rayan]. Research content is owned by M2 [Remas].
3. Do not modify another team's module without coordinating with its owner.
4. All code goes through Git branches and pull requests.
5. Every major feature has at least one test.
6. Statistical calculations are done in R, not duplicated in Python. The load-level bands are fixed thresholds, not statistics.
7. **Interfaces first:** any new or changed JSON field is added to `docs/API_CONTRACT.md` before the code is written.
8. **Mock until real:** if you are waiting for another team, build against the mock responses in the API contract and tell the owner and Member 1 the same day.
9. Changes to the simulator go through `SIMULATION_MODEL.md` with a version bump and notice to M3 [Basouny], M4 [Jomana] and M10 [Omar Tarek].
10. Raw data is never overwritten, and every dataset records its seed and simulator version.
11. Research conclusions must be supported by actual results and must state that the data is simulated.
12. Frontend pages follow the shared design system.
13. Long-running R jobs use timeouts.
14. Each team documents its component well enough for others to maintain it.
---

# Final Responsibility
 
Every team delivers a working, documented and tested component, and every handoff in the delivery chain is part of that delivery.
 
The Project Leader coordinates the whole application, reviews integration, and makes sure the components work together.
 
**SECSTAT is one integrated prediction system, not five disconnected projects.**
 