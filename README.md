# ⚽ Premier League Standings Analysis (2023–2026)
An end-to-end SQL and Excel project that transforms raw Premier League match results into complete end-of-season league tables for three consecutive seasons (2023/24–2025/26).
---
## 📌 Project Overview
This project demonstrates how match-level football data can be aggregated into official league standings using SQL.
Starting from raw match results, the project calculates each team's season performance—including wins, draws, losses, goals scored, goals conceded, goal difference, and points—before ranking teams to produce the final league table.
The project showcases practical SQL techniques commonly used in data analytics, including data transformation, aggregation, conditional logic, and ranking.
---
## 🎯 Objectives
- Transform raw match-level data into season standings
- Calculate:
  - Wins (W)
  - Draws (D)
  - Losses (L)
  - Goals For (GF)
  - Goals Against (GA)
  - Goal Difference (GD)
  - Points
- Rank clubs according to Premier League rules
- Generate accurate final league tables for multiple seasons
---
## 🛠️ Tech Stack
### SQL
- Common Table Expressions (CTEs)
- CASE Statements
- Aggregate Functions
- ROW_NUMBER()
- ORDER BY
### Microsoft Excel
- Data Validation
- Quality Assurance (QA)
- CSV Export
### GitHub
- Version Control
- Project Documentation
---
## 📂 Repository Structure
```text
Premier-League-Standings-Analysis/
│
├── sql/
│   └── create_standings.sql
│
├── results/
│   └── final_table.csv
│
└── README.md
```
---
## 📜 Project Files
### SQL Script
View the SQL script used to generate the final league standings.
➡️ **[create_standings.sql](./sql/create_standings.sql)**
### Final Results
View the generated Premier League standings.
➡️ **[final_table.csv](./results/final_table.csv)**
---
## 📊 Skills Demonstrated
- SQL Data Aggregation
- Common Table Expressions (CTEs)
- CASE Statements
- Window Functions
- Ranking with ROW_NUMBER()
- Data Cleaning
- Data Validation
- Sports Analytics
- Analytical Thinking
---
## 📈 Sample Output
| Season | Champion | Points |
|---------|----------|-------:|
| 2023/24 | Manchester City | 91 |
| 2024/25 | Liverpool | 84 |
| 2025/26 | Arsenal | TBD |
> **Note:** This project currently focuses on generating accurate Premier League standings from raw match data. The next phase will extend the project with analytical SQL queries and performance insights.
---
## 🚀 Next Phase of the Project
The next stage of this project will focus on answering football analytics questions using SQL, including:
- Which team had the strongest attack each season?
- Which club had the best defensive record?
- Home vs Away performance analysis
- Biggest wins and highest-scoring matches
- Season-over-season team performance comparison
- League position trends across seasons
- Key insights from the final standings
- Interactive Power BI dashboard for visualization
---
## 👤 Author
**Stephen Ugwueze**
Aspiring Data Analyst passionate about SQL, Excel, Power BI, and transforming raw data into meaningful insights.