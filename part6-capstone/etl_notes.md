## ETL Decisions

### Decision 1 — Date Format Standardization
Problem: Multiple date formats existed in the dataset.  
Resolution: Converted all dates to a standard YYYY-MM-DD format to ensure consistency and proper querying.

---

### Decision 2 — Missing Values
Problem: Some records contained NULL or missing values.  
Resolution: Removed invalid records and replaced missing numeric values with appropriate defaults where applicable.

---

### Decision 3 — Category Normalization
Problem: Categories had inconsistent naming and capitalization (e.g., "electronics", "Electronics").  
Resolution: Standardized all category values to maintain uniformity.

---

### Decision 4 — Duplicate Records
Problem: Duplicate transactions were found in the dataset.  
Resolution: Removed duplicates based on unique identifiers to ensure data accuracy.

---

## Summary
These ETL steps improved data quality, consistency, and reliability, making the dataset suitable for analytics and querying in the Data Lake environment.
