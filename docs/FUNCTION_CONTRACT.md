# Function Contract

The Shiny app calls these R functions directly; there is no transport or serialization layer. All tabular results are `data.frame` values. Functions that return a `list` name each table and model component as shown below. Implementations and callers must keep these names and columns aligned.

Input data uses the project variables `Packet_Rate`, `Bandwidth`, `Active_Connections`, `CPU_Usage`, and `Response_Time`; `Traffic_Level` is used for group comparisons. Functions that accept `data` require a data frame. Input validation and missing-value handling are performed by the shared core validators and dataset service.

## Statistics (`R/statistics/`)

| File and function | Inputs | Returns |
|---|---|---|
| `descriptive.R` — `descriptive_statistics(data, columns = names(data))` | Data frame; optional column names | `data.frame` with one row per selected variable and descriptive measures |
| `correlation.R` — `correlation_analysis(data, columns = NULL)` | Data frame; optional numeric column names | `list(correlations = data.frame, p_values = data.frame)` |
| `simple_regression.R` — `fit_simple_regression(data, response, predictor)` | Data frame; response and predictor column names | `list(model, coefficients = data.frame, fit = data.frame)` |
| `multiple_regression.R` — `fit_multiple_regression(data, response, predictors)` | Data frame; response and predictor column names | `list(model, coefficients = data.frame, fit = data.frame)` |
| `polynomial_regression.R` — `fit_polynomial_regression(data, response, predictor, degree = 2, additional_predictors = NULL)` | Data frame; response, focal predictor, degree, optional covariates | `list(model, coefficients = data.frame, fit = data.frame, terms = data.frame)` |
| `prediction.R` — `predict_response(model, new_data, interval_level = 0.95)` | Fitted model; data frame of predictor values; interval level | `data.frame` with fitted response and lower/upper prediction limits |
| `regression_plots.R` — `regression_plot_data(data, model, predictor, response, points = 100)` | Data frame, fitted model, selected columns, grid size | `data.frame` of observed values and fitted curve coordinates |
| `anova_one_way.R` — `one_way_anova(data, response, group)` | Data frame; response and group column names | `list(anova = data.frame, group_summary = data.frame)` |
| `posthoc.R` — `tukey_posthoc(anova_model, confidence_level = 0.95)` | One-way ANOVA model; confidence level | `data.frame` of pairwise comparisons and adjusted p-values |
| `diagnostics.R` — `regression_diagnostics(model, data)` | Fitted regression model and its data frame | `list(residuals = data.frame, tests = data.frame, influence = data.frame)` |
| `model_comparison.R` — `compare_models(models, data, response, folds = 5, seed)` | Named list of fitted models; data frame; response name; fold count and seed | `data.frame` with adjusted R², AIC, BIC, nested-test result where applicable, and cross-validated RMSE |
| `validation_tests.R` — `validate_model(model, reference_data, truth, tolerance)` | Fitted model, reference data frame, generating-truth list, tolerance | `list(checks = data.frame, passed = logical)` |

`model` values are fitted R model objects, not tabular results. Model-summary tables in returned lists use data frames.

## Services (`R/services/`)

| File and function | Inputs | Returns |
|---|---|---|
| `database.R` — `initialize_database(path)` | Database path | `list(connection, initialized = logical)` |
| `database.R` — `save_dataset(connection, data, dataset_id, metadata)` | Connection, data frame, identifier, metadata list | `list(dataset_id, rows, columns)` |
| `database.R` — `load_dataset(connection, dataset_id)` | Connection and identifier | Dataset `data.frame` |
| `database.R` — `list_datasets(connection)` | Connection | `data.frame` of dataset identifiers and metadata |
| `database.R` — `save_analysis_result(connection, dataset_id, analysis_type, result)` | Connection, dataset identifier, type, result list | `list(run_id, dataset_id, stored_at)` |
| `simulation_service.R` — `run_simulation(n, scenarios, seed, output_dir)` | Sample size, scenario configuration, seed, output directory | `list(data = data.frame, metadata = list, path = character)` |
| `dataset_service.R` — `import_dataset(path)` | CSV path | `list(data = data.frame, metadata = list)` |
| `dataset_service.R` — `preview_dataset(data, n = 10)` | Data frame and row limit | Preview `data.frame` |
| `dataset_service.R` — `prepare_dataset(data, required_columns, missing_policy)` | Data frame, required column names, missing-value policy | `list(data = data.frame, validation = list)` |
| `report_service.R` — `render_report(dataset, analysis_results, output_file)` | Dataset data frame, named results list, output path | `list(path, rendered_at)` |
| `analysis_service.R` — `run_analysis(data, analyses)` | Data frame and named analysis requests | `list` keyed by requested analysis, containing the corresponding statistics results |
| `prediction_service.R` — `predict_service(model, new_data, interval_level)` | Fitted model, predictor data frame, interval level | `list(predictions = data.frame, load_levels = data.frame)` |

The service return shapes are the handoff contract for Shiny modules. Keep input errors explicit; do not substitute empty or success-shaped results for failed analyses.

## Loading

R does not auto-load nested source files. `app.R` must recursively source all `.R` files in `R/`. Tests use `tests/testthat/helper-load.R` to recursively source the same tree before test files run.