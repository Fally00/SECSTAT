# SECSTAT
### DDoS Attack Impact Prediction System

*Modern Regression course project · 10 members, 5 teams*

[Instructions](docs/Roles/Instructions.md) · [Roles](docs/Roles/) · [Architecture](docs/ARCHITECTURE.md)

## The Idea

During a DDoS attack, traffic floods a server and its response time suffers, slowly at first, then very fast near its limits. Administrators can see the traffic rising, but not **what it will do to performance**.

SECSTAT predicts that impact. You enter the traffic conditions, and it estimates the server's response time using regression models built and validated in R.

## Research Question

How do abnormal increases in network traffic affect server response time, and can multiple and polynomial regression explain and predict this effect?

## How It Works

1. **Simulate** normal and DDoS-like traffic to produce a seeded, reproducible dataset.
2. **Model** response time with multiple linear regression, then polynomial regression for the nonlinear effects.
3. **Validate** with diagnostics, multicollinearity checks and model comparison.
4. **Predict** response time for any traffic situation.

**Inputs:** packet rate, bandwidth usage, active connections, CPU usage
**Output:** response time (ms)

## What You Get

- **Impact Predictor:** predicted response time with a prediction interval, server load level (Low / Moderate / High / Critical), and a packet rate vs response time chart
- **Data tools:** dashboard, simulation lab and dataset explorer
- **Analysis tools:** regression, traffic level comparison (ANOVA + Tukey), diagnostics and model comparison
- **Reports:** downloadable statistical reports

## Built With

R · Shiny + bslib · plotly · SQLite · R Markdown · testthat

## Run It

Once the code is in place, from the project root in R:

```r
shiny::runApp()
```

## Scope

The data is **simulated**, so the findings describe our server model, not a real server. SECSTAT is not an intrusion detection system or an attack tool, and no real attack traffic is generated.

**Simulate the surge. Model the impact. Predict the response.**