# 1. Project Leadership & Core Application

**Member:** M1 [Rayan] — Project Leader

**Primary ownership:** Project documentation, architecture, shared app foundation, and the shared statistics and core files shown below.

### Responsibilities

- Coordinate the five teams, review integration, and track milestones.
- Maintain project-level documentation and keep the architecture aligned with all role files.
- Maintain the function contract with statistics, services, and interface owners.
- Integrate the Shiny application with M7 and maintain shared configuration, helpers, theme, and project-level documentation.
- Implement descriptive statistics, correlation, one-way ANOVA, and Tukey HSD with their shared owners.
- Maintain the data dictionary and provenance from M9's simulator metadata.

### Assigned files

```text
SECSTAT/
├── .gitattributes
├── README.md
├── ROLES.md
├── CONTRIBUTING.md
├── DESCRIPTION                         (planned; generate after code exists)
├── renv.lock                           (planned; generate after code exists)
├── app.R                               (shared with M7 [Abdelrahman])
├── docs/
│   ├── ARCHITECTURE.md
│   ├── FUNCTION_CONTRACT.md
│   ├── PROJECT_PLAN.md
│   ├── TESTING.md                      (shared with M10 [Omar Tarek])
│   ├── REPRODUCIBILITY.md              (shared with M10 [Omar Tarek])
│   └── Roles/
├── data/
│   ├── DATA_DICTIONARY.md
│   └── DATA_PROVENANCE.md
├── reports/
│   └── README.md
├── R/
│   ├── core/
│   │   ├── config.R
│   │   ├── helpers.R
│   │   └── theme.R                     (shared with M8 [Nabila])
│   └── statistics/
│       ├── descriptive.R               (shared with M4 [Jomana])
│       ├── correlation.R               (shared with M4 [Jomana])
│       ├── anova_one_way.R             (shared with M3 [Basouny])
│       └── posthoc.R                   (shared with M3 [Basouny])
└── www/
    ├── images/
    │   └── SECSTAT Logo.jpg
    └── icons/
```

### Depends on

- **M2 [Remas]:** approved research definitions and hypotheses for project documentation.
- **M3 [Basouny] and M4 [Jomana]:** statistical function inputs and result tables for the function contract.
- **M5 [Haneen Ali] and M6 [Haneen]:** service requirements and result shapes for application integration.
- **M7 [Abdelrahman] and M8 [Nabila]:** module integration and shared theme requirements.
- **M9 [Tamim]:** seed, version, and parameters for data dictionary and provenance.
- **M10 [Omar Tarek]:** test findings and reproducibility feedback.

### Provides to

- **M2 [Remas]:** project specifications and the predictor integration point.
- **M3 [Basouny] and M4 [Jomana]:** function contract and shared-statistics conventions.
- **M5 [Haneen Ali] and M6 [Haneen]:** shared configuration, helpers, documentation, and function contracts.
- **M7 [Abdelrahman] and M8 [Nabila]:** app integration decisions and shared theme.
- **M9 [Tamim]:** data dictionary and provenance format.
- **M10 [Omar Tarek]:** architecture, testing, and reproducibility documentation.

### Timeline

| Phase | Task |
|---|---|
| 1. Research design & contracts | Align architecture and function contracts with the research and technical owners |
| 2. Foundations | Establish the app integration, configuration, helper, theme, and shared-statistics interfaces |
| 3. Core build | Integrate modules and services; maintain dataset documentation |
| 4. Integration | Resolve cross-team mismatches and refresh provenance |
| 5. Testing & validation | Review test findings and coordinate fixes |
| 6. Final report & presentation | Finalize project documentation and coordinate delivery |
