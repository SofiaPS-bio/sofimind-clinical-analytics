# SofiMind Data Consulting — Clinical Outcomes Analytics (Oral & Lung Cancer)

Portfolio-style clinical data analytics project demonstrating an end-to-end workflow with **Python**, **SQL (MySQL)**, and **Tableau** to explore associations between **treatments**, **clinical factors**, and **survival outcomes**.

> **Disclaimer:** Findings reflect patterns in the used datasets only and are intended for exploratory analysis; they do not establish clinical truth or causality.

---

## Why Data Analytics Matters in Clinical Studies

Clinical research and drug development generate large and complex datasets. Data analytics helps to:
- identify patterns in outcomes, risk factors, and patient subgroups,
- improve data quality through cleaning, validation, and transparency,
- support better decisions by transforming raw data into actionable insights.

---

## Project Overview

This repository contains two case studies:

### 1) Oral Cancer (5-year survival rate %)
Focus: clinical factors, stage, treatment type, and economic impact.  
**Outcome:** `Survival Rate (5-Year, %)`

### 2) Lung Cancer (survival time in months)
Focus: survival time across treatment groups and subgroup analyses.  
**Outcome:** `survival_time_months`

---

## Key Questions

- **Main:** Does treatment type influence survival in these datasets?
- How strongly is cancer stage associated with survival?
- How do clinical factors (e.g., tobacco use, HPV infection, family history, symptoms) relate to stage and survival? *(oral cancer)*
- What is the relationship between **economic burden** (cost, lost workdays) and clinical severity? *(oral cancer)*
- In lung cancer, do treatment groups differ in survival within clinically defined subgroups?

---

## Repository Contents

### Tableau
- `Oral_cancer.twb`
- `Lung_cancer.twb`

### Python
- `survival_cancer.ipynb`

### SQL (MySQL)
- `Schema.sql` — schema setup
- `oral_cancer.sql` — analysis queries

### Data (CSV)
- `oral_cancer_prediction_dataset.csv`
- `cancer_survival.csv`

### Assets / Outputs
- `survivalstxstage.png`
- `SoFiMind Data Consulting.pdf` (presentation)

---

## Data Download (Kaggle)

This project uses publicly available Kaggle datasets:

### Oral Cancer Dataset
Kaggle: https://www.kaggle.com/datasets/ankushpanday2/oral-cancer-prediction-dataset/data
Local file used here: `oral_cancer_prediction_dataset.csv`

### Lung Cancer Dataset
Kaggle: https://www.kaggle.com/datasets/datasetengineer/lungcanc2024
Local file used here: `LungCanC2024_Dataset.csv`

> Kaggle downloads require a Kaggle account. Please follow each dataset’s terms and licensing.

---

## How to Use Tableau Dashboards

Open the Tableau workbooks:
- `Oral_cancer.twb`
- `Lung_cancer.twb`

If Tableau prompts you to locate the data source:
1. Point Tableau to the CSV files (either in the repo root or your local data folder).
2. Refresh extracts if needed: **Data → Refresh All Extracts**.

Tip: If IDs are misread by Tableau, set the ID field type to **String** or use a calculated field `STR([id])`.

---

## SQL (MySQL)

The project includes MySQL scripts:
- `Schema.sql` — schema/setup
- `oral_cancer.sql` — analysis queries (group counts, survival summaries, etc.)

Executed using **MySQL via DBeaver**.

---

## Summary of Findings (Dataset-Specific)

### Oral cancer
- **Cancer stage shows a strong survival gradient**, with statistically significant differences between stages (**p < 0.01**). 
- **No significant survival differences** were found when comparing treatment groups overall in the oral cancer dataset. 
- Economic indicators suggest **higher treatment cost and more lost workdays** among patients treated with **targeted therapy** (observational pattern in this dataset).

### Lung cancer
- Survival time distributions are skewed; non-parametric tests (Kruskal–Wallis) were used for treatment-group comparisons. 
- In analyses restricted to a clinically defined subgroup (e.g., diagnosed patients who **never smoked** and had **family history**), a stage-specific comparison showed a modest statistical signal (**p = 0.04** in the presentation). 
- Within that subgroup, **immunotherapy** was associated with higher observed survival than **no treatment** (dataset-specific, exploratory).

> Note: All results are exploratory and dataset-dependent; they do not establish causality or real-world clinical effectiveness.

---

## Author

**Sofia Scomazzon**  
SofiMind Data Consulting  
GitHub: https://github.com/SofiaPS-bio 
LinkedIn: https://www.linkedin.com/in/sofia-scomazzon/

---

## License

See `LICENSE` for repository code/documentation. Data files are governed by the dataset authors’ terms.

---

## References

- https://doi.org/10.1016/j.esmoop.2024.104086
- https://doi.org/10.1038/d41586-025-01152-6
- https://www.nidcr.nih.gov/health-info/oral-cancer#causes 
- https://www.mayoclinic.org/diseases-conditions/lung-cancer/symptoms-causes/syc-20374620
- Kaggle datasets listed above
