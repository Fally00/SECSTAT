# SECSTAT
### DDoS Attack Impact Prediction System

**Project Type:** Academic Research & Web Application (Modern Regression course)

**Team:** 9 members (5 teams). Check each member's role in [Roles](Roles.md).

#### Read the [Instructions](docs/Roles/Instructions.md) before starting.
#### For the project structure tree, check [Architecture](docs/ARCHITECTURE.md).


## 1. The Idea

During a DDoS attack, traffic to a server rises far beyond normal levels. Packet rate, bandwidth use, open connections and CPU load all climb together, and the server's response time degrades, slowly at first and then very fast once the server nears its limits.

SECSTAT estimates **how much an abnormal increase in network traffic will hurt server response time**, using regression models built and validated in R, and shows the answer in a simple web interface built with R Shiny.

## 2. The Problem

- Administrators can see that traffic is rising, but not what it will do to response time.
- The relationship is probably not a straight line: response time may stay flat under light load and then explode near saturation.
- The traffic metrics move together, which makes naive regression models unreliable unless they are checked properly.

## 3. Our Solution

SECSTAT is a web application, written entirely in R, that:

1. **Simulates** server behavior under normal and DDoS-like traffic, producing a documented dataset.
2. **Models** response time with multiple linear regression, then polynomial regression to capture nonlinear effects.
3. **Validates** the models (diagnostics, multicollinearity, model comparison) so the final predictor can be trusted.
4. **Predicts** response time for any traffic situation the user enters.

The statistical toolkit (descriptive statistics, correlation, ANOVA, diagnostics, model comparison) supports this prediction work. It is not a separate experiment: the project has one question, DDoS impact on response time.

## 4. Research Question & Hypotheses

**Main research question:**

How do abnormal increases in network traffic affect server response time, and can multiple and polynomial regression models explain and predict this effect?

**Hypotheses (formal versions in [research/HYPOTHESES.md](research/HYPOTHESES.md)):**

- **H1:** Packet rate has a significant positive effect on response time when the other variables are held constant.
- **H2:** The regression model explains a significant part of the variation in response time (overall F-test).
- **H3:** Adding polynomial terms improves the model significantly over the linear model.
- **H4 (supporting):** Mean response time differs across traffic levels (one-way ANOVA).

## 5. Variables & Models

| Variable | Description | Unit | Role |
|---|---|---|---|
| `Packet_Rate` | Number of packets per second | packets/s | Predictor |
| `Bandwidth` | Bandwidth utilization | % | Predictor |
| `Active_Connections` | Number of active connections | count | Predictor |
| `CPU_Usage` | CPU utilization | % | Predictor |
| `Response_Time` | Server response time | ms | **Response (Y)** |

`Traffic_Level` (Low / Medium / High / Attack) is derived from `Packet_Rate` ranges and is used only for group comparison.

**Model 1: Multiple linear regression**

```
Response_Time = β0 + β1(Packet_Rate) + β2(Bandwidth) + β3(Active_Connections) + β4(CPU_Usage) + ε
```

**Model 2: Polynomial regression**

```
Response_Time = β0 + β1(Packet_Rate) + β2(Packet_Rate²) + β3(Bandwidth) + β4(Active_Connections) + β5(CPU_Usage) + ε
```

Higher degrees or squared terms for other variables are added only if model comparison supports them. Polynomial terms are centered to reduce collinearity with their linear terms. The final model is chosen by adjusted R², AIC/BIC, nested F-test and cross-validated RMSE.

## 6. Data

The dataset is **synthetic**, produced by a seeded simulator (`simulation/generate_dataset.R`).

- Scenarios cover normal, elevated and DDoS-like traffic.
- Predictors are correlated with each other and respect physical limits (CPU and bandwidth cannot exceed 100%).
- Response time follows a nonlinear relationship with noise, so the polynomial model has something real to find.
- The true generating equation is recorded in `simulation/SIMULATION_MODEL.md`, so we can check that our regression models recover it.
- The same seed always produces the same dataset.

**Limitation:** because the data is simulated, our findings describe the simulated server model, not measurements from a real server. The final report states this clearly. No real attack traffic is generated anywhere in the project.

## 7. Statistical Methods

| Method | Role in the project |
|---|---|
| Descriptive Statistics | Understand each variable across normal and attack traffic |
| Correlation | Relationships between traffic metrics and response time |
| Simple Regression | Packet rate versus response time (shown on the predictor chart) |
| Multiple Linear Regression | Main explanatory and predictive model |
| Polynomial Regression | Capture nonlinear and saturation effects |
| Hypothesis Testing | Coefficient t-tests, overall F-test, nested F-test |
| Regression Diagnostics | Residuals, normality, heteroscedasticity, multicollinearity (VIF), influential points |
| Model Comparison | Choose the final predictor |
| One-Way ANOVA + Tukey HSD | Supporting comparison of response time across traffic levels |
| Validation Tests | Check results against reference data and the simulation ground truth |

**R performs all statistical calculations.**

## 8. Web Application Modules

1. **Dashboard:** Overview of datasets, models and latest results.
2. **Impact Predictor (main):** Enter traffic conditions, get the predicted response time.
3. **Simulation Lab:** Configure and generate synthetic datasets.
4. **Dataset Explorer:** Upload, inspect and prepare datasets.
5. **Regression Lab:** Fit and inspect linear and polynomial models.
6. **Traffic Level Comparison:** ANOVA and Tukey HSD across traffic levels.
7. **Diagnostics Lab:** Evaluate regression assumptions.
8. **Model Comparison:** Compare the fitted models and select the final one.
9. **Research Reports:** Generate downloadable statistical reports.

### Expected interface (Impact Predictor)

The user enters Packet_Rate, Bandwidth, Active_Connections and CPU_Usage. The page shows:

- **Predicted response time** in ms, with a prediction interval.
- **Expected server load level** (Low / Moderate / High / Critical), based on thresholds defined in `R/core/config.R`.
- **Chart of packet rate versus response time** with the data points, the linear and polynomial fits, and the user's input marked.

## 9. Technology Stack

| Component | Technology |
|---|---|
| Language | R |
| Web Application | Shiny + bslib |
| Visualizations | plotly (R package) |
| Statistics | R |
| Data Simulation | R |
| Database | SQLite (`DBI` + `RSQLite`), PostgreSQL optional |
| Reports | R Markdown |
| Testing | testthat |
| Reproducibility | renv + fixed seeds |

**Architecture:**

Simulator → Dataset → R Services → R Statistics → Database / Results → Shiny Interface

Everything runs in R. The interface calls R functions directly, with no separate backend or REST API. Function inputs and outputs are defined in [FUNCTION_CONTRACT.md](docs/FUNCTION_CONTRACT.md).

## 10. Getting Started

From the project root, in R:

```r
install.packages("renv")   # first time only
renv::restore()            # install the locked packages
shiny::runApp()            # start the application
testthat::test_dir("tests/testthat")   # run the tests
```

## 11. Project Vision

SECSTAT is not an intrusion detection system and not a DDoS tool. It is a statistical prediction system: it takes the traffic conditions of a server and tells you what they are likely to do to its response time, and it proves why that prediction can be trusted.

**Simulate the surge. Model the impact. Predict the response.**