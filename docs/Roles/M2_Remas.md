# 1. Research & Impact Predictor

**Member:** M2 [Remas] — Research Co-Lead

**Primary ownership:** Research content and the Impact Predictor module, shared with M8.

### Responsibilities

- Maintain the research question, hypotheses, variable definitions, and methodology.
- Define units, plausible ranges, expected directions, and nonlinear relationships for M9 and the statistics owners.
- Interpret model and validation results in the results log without changing the research question.
- Design the Impact Predictor inputs, predicted response time and interval, load-level display, and packet-rate chart.
- Coordinate the predictor module with M8's shared implementation.

### Assigned files

```text
SECSTAT/
├── research/
│   ├── RESEARCH_PROPOSAL.md
│   ├── HYPOTHESES.md
│   ├── VARIABLE_DICTIONARY.md
│   ├── METHODOLOGY.md
│   └── RESULTS_LOG.md
└── R/
    └── interface/
        └── mod_predictor.R              (shared with M8 [Nabila])
```

### Depends on

- **M1 [Rayan]:** project constraints and the app integration point.
- **M3 [Basouny]:** fitted-model predictions and prediction intervals.
- **M4 [Jomana]:** final model recommendation and validation findings.
- **M6 [Haneen]:** prediction-service inputs and outputs.
- **M8 [Nabila]:** shared theme and chart helpers for the predictor.
- **M9 [Tamim]:** generated dataset and simulation ground truth.
- **M10 [Omar Tarek]:** test findings on research-critical results.

### Provides to

- **M1 [Rayan]:** stable research definitions for project documents.
- **M3 [Basouny] and M4 [Jomana]:** hypotheses, model equations, and selection criteria.
- **M7 [Abdelrahman] and M8 [Nabila]:** interface requirements and interpretation context.
- **M9 [Tamim]:** variable definitions and expected relationships.
- **M10 [Omar Tarek]:** hypothesis-aligned expected behaviors for tests.

### Timeline

| Phase | Task |
|---|---|
| 1. Research design & contracts | Confirm question, hypotheses, variables, and methodology |
| 2. Foundations | Define predictor inputs and display requirements with M8 |
| 3. Core build | Implement the research documents and predictor module |
| 4. Integration | Connect model choice, predictions, intervals, and chart |
| 5. Testing & validation | Compare results with hypotheses and update the results log |
| 6. Final report & presentation | Prepare research interpretation and demonstration |
