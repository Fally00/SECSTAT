# SECSTAT — Team Roles & Responsibilities

## Team Structure

- **Team size:** 9 members
- **Project Leader:** Member 1
- **Structure:** 5 teams
- **Workload balance:** Member 1 also owns or co-owns a few small statistics and data documentation files, so the heavier roles stay in balance with the rest.

Each member has clear responsibilities and file ownership. **No team works alone:** the Impact Predictor only works if every link in the delivery chain below works, so every role lists what it needs from other members and what it hands over.

---

## Team Organization

The team has 9 members in 5 teams. The teams depend on each other through a delivery chain (research → data → statistics → services → interface → testing), described below.

| Team | Members | Responsibility |
|---|---:|---|
| Leadership & Research | 2 | Architecture, function contract, research design, hypotheses, Impact Predictor page |
| Statistical Engineering | 2 | Regression, polynomial models, prediction, diagnostics, model comparison, validation |
| Services | 2 | Database, dataset, simulation, report, analysis and prediction services, validation of inputs |
| Interface | 2 | Data pages, dashboard, statistical pages, shared charts |
| Data & QA | 2 | Simulator and dataset, testing, reproducibility |

---

# How the Teams Depend on Each Other

## Development Roadmap

1. Research design and function contract.
2. Foundations: environment, project skeleton, simulator v1.
3. Core build: statistics functions, services, interface modules.
4. Integration: end-to-end prediction from dataset to Impact Predictor.
5. Testing and validation.
6. Final research paper and presentation.

---

## The delivery chain

```text
M2 defines variables & hypotheses
        ↓
M8 [Tamim] simulates the dataset (+ ground truth)
        ↓
M3 / M1 write the statistics functions (R/statistics/)
        ↓
M4 stores datasets, runs, reports    M5 validates inputs and runs analyses
        ↓                                   ↓
M1 / M6 connect everything in app.R
        ↓
M6 / M7 / M2 show it in the interface (R/interface/)
        ↓
M9 [Omar Tarek] tests and validates the whole chain end to end
```

## Dependency map

| Who needs it | From | What | Where it lives |
|---|---|---|---|
| M8 [Tamim] | M2 | Variable definitions, units, ranges, expected relationships | `research/VARIABLE_DICTIONARY.md` |
| M3, M1 | M2 | Model equations, hypotheses, model selection criteria | `research/HYPOTHESES.md`, `research/METHODOLOGY.md` |
| M3, M1, M4 | M8 [Tamim] | Generator, dataset and the true generating equation | `simulation/`, `data/raw/` |
| M5 | M1, M3 | Statistics functions and what they return | `R/statistics/`, `docs/FUNCTION_CONTRACT.md` |
| M5 | M4 | Datasets to analyze | `R/services/dataset_service.R` |
| M4 | M5 | Input validators | `R/core/validators.R` |
| M4, M5 | M1 | Shared helpers and configuration, including load-level thresholds | `R/core/helpers.R`, `R/core/config.R` |
| M1 | M8 [Tamim] | Seed, version and parameters of each dataset | `data/DATA_DICTIONARY.md`, `data/DATA_PROVENANCE.md` |
| M4 | M5 | Analysis and prediction results to store | `R/services/analysis_service.R`, `R/services/prediction_service.R` |
| M2, M6, M7 | M4, M5 | Service functions behind every page | `R/services/` |
| M2, M6, M7 | M1 | App layout and shared theme | `app.R`, `R/core/theme.R` |
| M2, M6 | M7 | Shared plotly chart helpers | `R/interface/charts.R` |
| M7 | M6 | Selected dataset shared between pages | `app.R` |
| M2, M5 | M3 | Which model is the final predictor | `R/statistics/model_comparison.R` |
| M9 [Omar Tarek] | M8 [Tamim] | Ground truth to check that the models recover it | `simulation/SIMULATION_MODEL.md` |
| M9 [Omar Tarek] | Everyone | Merged code, seeds, reference results | `tests/testthat/` |
| Everyone | M9 [Omar Tarek] | Bug reports and test results | `docs/TESTING.md` |

**Example:** the Impact Predictor page (M2, M7) needs a chart helper from M7, a prediction service from M5, a prediction function and model choice from M3, and a dataset from M8 [Tamim].

---

# Team Collaboration Rules

1. Every member is responsible for their assigned files and deliverables.
2. Project-level Markdown documentation is maintained by M1 [Rayan]. Research content is owned by M2 [Remas].
3. Do not modify another team's module without coordinating with its owner.
4. All code goes through Git branches and pull requests.
5. Every major feature has at least one test.
6. Statistical calculations live in `R/statistics/` and are not duplicated in services or interface files. The load-level bands are fixed thresholds, not statistics.
7. **Interfaces first:** any new or changed function input or returned column is added to `docs/FUNCTION_CONTRACT.md` before the code is written.
8. **Mock until real:** if you are waiting for another team, write a stub that returns sample data matching the function contract, and tell the owner and Member 1 the same day.
9. Changes to the simulator go through `SIMULATION_MODEL.md` with a version bump and notice to M1 [Rayan], M3 [Basouny] and M9 [Omar Tarek].
10. Raw data is never overwritten, and every dataset records its seed and simulator version.
11. Research conclusions must be supported by actual results and must state that the data is simulated.
12. Interface modules follow the shared theme.
13. Long-running R jobs use timeouts.
14. Each team documents its component well enough for others to maintain it.

---

# Final Responsibility

Every team delivers a working, documented and tested component, and every handoff in the delivery chain is part of that delivery.

The Project Leader coordinates the whole application, reviews integration, and makes sure the components work together.

**SECSTAT is one integrated prediction system, not five disconnected projects.**