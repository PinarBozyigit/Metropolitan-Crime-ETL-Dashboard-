📊 London Crime Analysis (Metropolitan Police)
2 Years of Data • 2M+ Records • SQL ETL Pipeline • Tableau Dashboard
This project analyzes crime trends across London using open data from the Metropolitan Police.
It includes a full ETL workflow, data cleaning, date standardization, borough validation, and an interactive Tableau dashboard.

🔧 Tech Stack
- SQL Server (SSMS)
- BULK INSERT
- Tableau
- Data Cleaning & Transformation
- Dimensional Modeling

📥 Data Loading
The raw data was provided as monthly Excel files.
I imported each file into the Crime_Law table using BULK INSERT, enabling fast and efficient loading of over 2 million records.

🧹 Data Cleaning
Borough Validation
Although the dataset was downloaded using the Metropolitan filter, it still contained non‑London boroughs.
To fix this, I created a Dim_Borough table with official London boroughs and joined it with the main table.
Date Standardization
The date field was inconsistent:
- YYYY-MM
- YYYY-MM-DD
- NULL values
Using CASE, WHEN, LEN(), and CAST(), I transformed all date values into a clean, unified format.

🧱 SQL Views
Two main views were created:
- vw_London_Crime
- vw_Crime_Dashboard
These views prepare the dataset for analysis and visualization.

📊 Interactive Dashboard
🔗 Tableau Public:
[https://your-tableau-link-here](https://public.tableau.com/app/profile/pinar.bozyigit/viz/Book1_17733259886090/Dashboard1?publish=yes)
The dashboard visualizes:
- Crime trends by borough
- Monthly patterns
- Crime type distribution
- High‑risk areas

📸 Screenshots
(Add your dashboard and SQL screenshots here)
