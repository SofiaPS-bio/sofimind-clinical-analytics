# SofiMind Data Consulting — Clinical Outcomes Analytics (Oral & Lung Cancer)

Portfolio-style clinical data analytics project demonstrating an end-to-end workflow with **Python**, **SQL (MySQL)**, and **Tableau** to explore associations between **treatments**, **clinical factors**, and **survival outcomes**.

> **Disclaimer:** Results reflect patterns in the used datasets only and are intended for exploratory analysis; they do not establish clinical truth or causality.

---

## Project Overview

This repository contains two case studies:

### 1) Oral Cancer (5-year survival rate)
Focus: clinical factors, stage, treatment type, and economic impact.
- Outcome: **Survival Rate (5-Year, %)**

### 2) Lung Cancer (survival time)
Focus: survival time across treatment groups and subgroup analyses.
- Outcome: **survival_time_months**

---

## Key Questions

- **Main:** Is survival associated with **treatment type**?
- How strongly is **cancer stage** associated with survival?
- How do clinical factors (e.g., tobacco use, HPV, family history, symptoms) relate to stage and survival? (oral cancer)
- What is the relationship between **economic burden** (cost, lost workdays) and clinical severity? (oral cancer)
- In lung cancer, do treatment groups differ in survival within clinically defined subgroups?

---

## Repo Contents

### Python notebooks
- `survival_cancer.ipynb`

### SQL scripts
- `oral_cancer.sql`
- `Schema.sql`

### Tableau workbooks
- `Oral_cancer.twb`
- `Lung_cancer.twb`

### Data files (CSV)
- `oral_cancer_prediction_dataset.csv`
- `LungCanC2024_Dataset.csv`
- `cancer_survival.csv`

### Images / assets
- `survivalstxstage.png`

---

## How to Use Tableau Dashboards

### Open the Tableau workbooks:

Oral_cancer.twb

Lung_cancer.twb

### If Tableau prompts you to locate the data source:

Point to the CSV files in the root folder:

oral_cancer_prediction_dataset.csv

LungCanC2024_Dataset.csv

Refresh extracts if needed

Tip: If IDs are misread by Tableau (e.g., strange offsets), ensure the ID field is treated as String or use a STR([id]) calculated field.

---

## SQL (MySQL)

### The project also includes MySQL scripts:

Schema.sql — table schema / setup

oral_cancer.sql — analysis queries (group counts, survival summaries, etc.)

These were executed in MySQL via DBeaver.

---

## Summary of Findings (Dataset-Specific)
### 1. Oral cancer

Cancer stage shows a strong survival gradient (higher stage → lower 5-year survival).

Treatment differences were evaluated with stage stratification; conclusions are dataset-specific.

Economic measures (cost, lost workdays) show structured patterns by stage and treatment.

### 2. Lung cancer

Survival time distributions are strongly skewed; non-parametric tests (Kruskal–Wallis) were used for group comparisons.

In subgroup analyses (e.g., diagnosed, never-smokers, family history), some stage-specific signals may appear, but results depend on correction and effect size.

Cancer stage is strongly associated with survival time, consistent with clinical expectations.

---

## Data Sources / Attribution

This repository uses publicly available datasets, including Kaggle sources. Dataset licensing and provenance remain with the original authors.
If you downloaded these datasets yourself, ensure you comply with the dataset terms on Kaggle.

## Data Download (Kaggle)

This project uses two publicly available Kaggle datasets:

### 1) Oral Cancer Dataset
- Kaggle: https://www.kaggle.com/datasets/ankushpanday2/oral-cancer-prediction-dataset/data  
- Expected file in this repo: `oral_cancer_prediction_dataset.csv`

### 2) Lung Cancer Dataset
- Kaggle: https://www.kaggle.com/datasets/datasetengineer/lungcanc2024  
- Expected file in this repo: `LungCanC2024_Dataset.csv`

> Note: Kaggle downloads require a Kaggle account. Please follow Kaggle’s dataset terms and licensing.

---

## Author

Sofia Scomazzon
SofiMind Data Consulting
GitHub: https://github.com/SofiaPS-bio

LinkedIn: https://www.linkedin.com/in/sofia-scomazzon/

## License

See LICENSE for this repository’s code and documentation. Data files are governed by the dataset authors’ terms.
