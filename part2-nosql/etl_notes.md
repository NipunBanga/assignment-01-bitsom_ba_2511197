## ETL Decisions

### Decision 1 — Date Format Standardization
Problem: The dataset contained inconsistent date formats (e.g., DD-MM-YYYY and MM/DD/YYYY).
Resolution: All dates were converted into a standardized YYYY-MM-DD format to ensure consistency and compatibility with SQL date functions.

### Decision 2 — Handling Missing Values
Problem: Some records had NULL or missing values in key fields such as revenue and quantity.
Resolution: Missing numeric values were replaced with default values where applicable, and incomplete records were removed to maintain data quality.

### Decision 3 — Category Normalization
Problem: Product categories had inconsistent casing (e.g., 'electronics', 'Electronics', 'ELECTRONICS').
Resolution: All category values were standardized to a uniform format (title case) before loading into the data warehouse.
