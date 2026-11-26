# Research Methodology

## Data and variables

Use the seeded R simulator in `simulation/` to generate synthetic server observations across normal, elevated, and DDoS-like traffic scenarios. The predictor variables are `Packet_Rate`, `Bandwidth`, `Active_Connections`, and `CPU_Usage`; `Response_Time` is the response. Derive `Traffic_Level` from packet-rate ranges only for the supporting group comparison. Record the generating assumptions and simulator version in `simulation/SIMULATION_MODEL.md`.

## Models and analysis

Fit the multiple linear regression

```text
Response_Time = β0 + β1(Packet_Rate) + β2(Bandwidth) + β3(Active_Connections) + β4(CPU_Usage) + ε
```

and the polynomial regression

```text
Response_Time = β0 + β1(Packet_Rate) + β2(Packet_Rate²) + β3(Bandwidth) + β4(Active_Connections) + β5(CPU_Usage) + ε.
```

Center polynomial terms to reduce collinearity with their linear terms. Consider higher degrees or squared terms for other variables only when model comparison supports them. Use descriptive statistics and correlation to characterize the data; use one-way ANOVA with Tukey HSD as a supporting comparison across traffic levels.

## Validation and model selection

Evaluate coefficient tests and the overall F-test. Check residual behavior, normality, heteroscedasticity, multicollinearity (VIF), and influential observations. Compare candidate models using adjusted R², AIC/BIC, nested F-tests, and cross-validated RMSE. Select the final predictor using these criteria, then report predictions with prediction intervals.

Compare fitted results against reference calculations and the simulator's known generating equation. Use fixed seeds for reproducibility. State clearly that conclusions describe the simulated server model, not measurements from a real server.
