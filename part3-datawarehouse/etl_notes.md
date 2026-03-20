## ETL Decisions

### Decision 1 — Date Format Standardization
Problem: Multiple date formats existed in the dataset.
Resolution: Converted all dates to YYYY-MM-DD format.

### Decision 2 — Missing Values
Problem: Some records contained NULL values.
Resolution: Removed invalid records and replaced missing numeric values where appropriate.

### Decision 3 — Category Normalization
Problem: Categories appeared with inconsistent capitalization.
Resolution: Standardized category values before loading.