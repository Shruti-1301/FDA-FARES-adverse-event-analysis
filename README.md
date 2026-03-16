# Adverse Drug Event Risk Profiling Using FDA FAERS

## Problem Statement
Adverse drug events are a leading cause of preventable 
hospitalisation globally. This project analyses 1,052,002 
adverse event records from the FDA FAERS 2023 Q1 database 
to identify high-risk drug-reaction patterns, demographic 
fatality trends, and actionable pharmacovigilance insights.

## Tools Used
- Python (pandas, numpy, matplotlib, seaborn)
- SQL (SQLite)
- Power BI

## Dataset
- **Source:** [FDA FAERS Quarterly Data Files](https://www.fda.gov/drugs/questions-and-answers-fdas-adverse-event-reporting-system-faers/fda-adverse-event-reporting-system-faers-latest-quarterly-data-files)
- **Period:** January - March 2023
- **Files used:** DEMO23Q1, DRUG23Q1, REAC23Q1, OUTC23Q1
- **Records:** 1,052,002 after merging and cleaning
- **Note:** Raw data files are not included due to size constraints. Download FAERS 2023 Q1 ASCII files directly from the FDA link above.

## Project Structure
```
fda-faers-adverse-event-analysis/
├── data/
│   └── cleaned/    -> processed merged CSV
        raw/        -> raw data from FDA fares
├── notebooks/
│   ├── 01_eda_cleaning.ipynb
│   ├── 02_sql_analysis.ipynb
│   └── plots/      → EDA visualisations
├── SQL/
│   ├── queries.sql
│   └── q1-q5 CSV results
├── Powerbi/
│   └── .png files and .pbix report
└── README.md
```

## Key Findings
1. **Fentanyl has the highest fatality rate at 44.62%** — 
   nearly 1 in 2 adverse events result in death
2. **Patients aged 65+ face a 9.31% fatality rate** — 
   67% higher than the lowest risk group (35-49 at 5.57%)
3. **Male patients die at 9.41% vs 5.72% for females** — 
   64% higher fatality risk across all drug categories
4. **Overall fatality rate: 7.11%** across 74,839 fatal cases
5. **Immunosuppressants dominate report volume** — 
   Infliximab, Vedolizumab, Methotrexate top the list

## How to Run
1. Download FAERS 2023 Q1 ASCII files from fda.gov
2. Run 01_eda_cleaning.ipynb to clean and merge data
3. Run 02_sql_analysis.ipynb for SQL queries
4. Open Powerbi file to view dashboard
