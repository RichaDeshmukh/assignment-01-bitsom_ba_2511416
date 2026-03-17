## Anomaly Analysis

### Insert Anomaly
In the orders_flat dataset, it is not possible to insert a new product unless there is an associated order.

Example:
If a new product "Wireless Mouse" is introduced but no customer has ordered it yet, it cannot be stored in the table because order_id is required.

---

### Update Anomaly
Customer details such as city are repeated in multiple rows.

Example:
Customer CUST006 appears in multiple records. If their city changes from Mumbai to Pune, all rows must be updated. Missing one update will create inconsistency.

---

### Delete Anomaly
If a row is deleted, important information may be lost.

Example:
If the only order containing a specific product is deleted, all details about that product are lost from the database.

---

## Normalization Justification

Keeping all data in a single table may appear simple, but it introduces redundancy and data inconsistency issues. In the orders_flat dataset, customer and product details are repeated multiple times across different rows. This redundancy increases storage requirements and makes updates difficult.

For example, if a customer changes their city, it must be updated in every row where that customer appears. Missing even one row results in inconsistent data. Similarly, product prices are repeated across multiple records. If a product price changes, updating all rows is inefficient and error-prone.

Delete anomalies also pose a risk. If the only record containing a product is deleted, all information about that product is permanently lost.

Normalization solves these problems by splitting the data into multiple related tables such as Customers, Products, Orders, and Order Items. Each table stores only relevant attributes, and relationships are maintained using foreign keys. This reduces redundancy, improves data integrity, and simplifies maintenance.

Therefore, normalization is not over-engineering but an essential step for building a reliable and scalable database system.
