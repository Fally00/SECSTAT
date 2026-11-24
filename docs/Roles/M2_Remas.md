
## M2 [Remas] — Research Co-Lead & Impact Predictor
 
**Primary ownership:** Research content and the main interface of the system, the Impact Predictor.
 
### Responsibilities
 
- Define the research problem and research questions.
- Formulate the statistical hypotheses (H1–H4).
- Define every variable: unit, realistic range, expected direction and expected nonlinearity. M9 builds the simulator from these definitions.
- Write the methodology: model equations and model selection criteria.
- Coordinate statistical requirements with the R team.
- Keep `RESULTS_LOG.md` up to date from M3 and M4 outputs and interpret the results for the paper.
- Build the Impact Predictor page: input form, predicted response time with interval, load level, and the packet rate versus response time chart.
### Assigned files
 
```text
research/
├── RESEARCH_PROPOSAL.md
├── HYPOTHESES.md
├── VARIABLE_DICTIONARY.md
├── METHODOLOGY.md
└── RESULTS_LOG.md
 
frontend/
├── pages/
│   └── predictor.html
└── js/
    └── predictor.js
```
 
Member 2 owns the research content. Member 1 integrates it into the project-level documentation.
 
### Depends on
 
- **M9 [Tamim]:** the dataset and ground truth, to judge whether the results make sense.
- **M3 [Basouny] , M4 [Jomana]:** the prediction output and the final model choice.
- **M1 [Rayan], M6 [Haneen]:** the prediction endpoint.
- **M8 [Nabila]:** `charts.js` for the Plotly chart.
### Provides to
 
- **M9 [Tamim]:** variable definitions and relationships.
- **M3 [Basouny] , M4 [Jomana]:** hypotheses, equations, selection criteria.
- **M1 [Rayan]:** research content for documentation and the paper.
### Timeline
 
| Phase | Task |
|---|---|
| 1. Research design & contracts | Research question, hypotheses, variable dictionary, methodology; hand definitions to M9 and equations to M3/M4 |
| 2. Foundations | Predictor page layout and form using M1's design system |
| 3. Core build | Connect the predictor to the prediction endpoint; add load level display |
| 4. Integration | Add the packet rate versus response time chart; test with the final model |
| 5. Testing & validation | Check results against hypotheses; update `RESULTS_LOG.md` |
| 6. Final report & presentation | Write the research sections of the paper; prepare the demo |
 
---