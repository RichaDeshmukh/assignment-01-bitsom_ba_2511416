## ETL Decisions

### Decision 1 — Standardizing Date Formats
Problem: The retail_transactions dataset contained inconsistent date formats such as DD-MM-YYYY, MM/DD/YYYY, and text-based dates. This inconsistency makes it difficult to perform time-based analysis like monthly sales trends.

Resolution: All date values were converted into a standard ISO format (YYYY-MM-DD) before loading into the data warehouse. This ensures consistency and enables accurate grouping and filtering in queries.

---

### Decision 2 — Handling NULL and Missing Values
Problem: Some records had missing values in important columns such as product category and sales amount. This could lead to incorrect aggregations and reporting errors.

Resolution: Missing values were handled by either replacing them with appropriate defaults (e.g., 'Unknown' for category) or excluding incomplete records where necessary. This ensured that the dataset remained reliable for analysis.

---

### Decision 3 — Standardizing Category Names
Problem: The dataset contained inconsistent category values such as "electronics", "Electronics", and "ELECTRONICS". This leads to incorrect grouping and duplication in reports.

Resolution: All category values were converted to a consistent format (e.g., capitalized as "Electronics") using transformation rules. This ensures accurate aggregation and reporting in the data warehouse.
