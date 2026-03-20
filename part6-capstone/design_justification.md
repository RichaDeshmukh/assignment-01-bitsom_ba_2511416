## Storage Systems

The proposed architecture uses multiple specialized storage systems to handle different types of healthcare data efficiently. For transactional data such as patient records, diagnoses, and treatment history, a relational database like PostgreSQL is used. This ensures ACID compliance and guarantees data consistency, which is critical in healthcare systems.

For real-time ICU monitoring data, a streaming platform such as Apache Kafka is used to ingest high-frequency vitals data. This data is stored in a Data Lake, which can handle large volumes of structured and unstructured data, including logs and sensor data.

For analytical reporting, a Data Warehouse is used to store cleaned and aggregated data. This enables efficient querying for monthly reports such as bed occupancy rates and department-wise costs.

To support natural language queries by doctors, a Vector Database is used. Patient notes and medical records are converted into embeddings and stored, allowing semantic search for queries like “Has this patient had a cardiac event before?”.

## OLTP vs OLAP Boundary

The OLTP system consists of the hospital’s operational database, where real-time transactions such as patient admissions, prescriptions, and updates to medical records occur. This system prioritizes speed and data integrity.

The OLAP system begins when data is extracted from the OLTP database and loaded into the Data Warehouse. In this layer, data is transformed into structured formats suitable for reporting and analysis. This separation ensures that analytical queries do not impact transactional performance.

## Trade-offs

One major trade-off in this architecture is increased system complexity due to the use of multiple specialized components such as a data lake, data warehouse, and vector database. Managing and integrating these systems requires additional effort and infrastructure.

This challenge can be mitigated by using orchestration tools such as Apache Airflow or cloud-managed services that automate data pipelines. Proper monitoring and logging systems can also ensure reliability and reduce operational overhead. Despite the complexity, this architecture provides scalability, flexibility, and advanced analytics capabilities, making it suitable for a modern healthcare system.
