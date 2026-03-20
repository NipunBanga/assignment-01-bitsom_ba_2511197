## Storage Systems

The architecture uses multiple specialized storage systems to meet different requirements. PostgreSQL is used as the OLTP database to store structured patient data such as demographics, treatment history, and transactions, ensuring ACID compliance and reliability.

A Data Lake is used to store raw and unstructured data, including ICU device streams, logs, and medical documents. This enables scalable storage and supports future machine learning use cases.

A Data Warehouse is used for analytical reporting, such as bed occupancy, cost analysis, and department-level insights. It stores cleaned and structured data optimized for fast querying.

A Vector Database is used to enable semantic search over patient records and medical documents. It allows doctors to query patient history using natural language by retrieving contextually relevant information.

## OLTP vs OLAP Boundary

The OLTP system consists of the PostgreSQL database, where real-time transactions such as patient admissions, treatments, and updates are handled. This system prioritizes consistency and low latency.

The OLAP system begins at the Data Warehouse layer, where data is transformed and aggregated for reporting and analytics. The Data Lake acts as an intermediate layer storing raw data before it is processed for analytical use.

## Trade-offs

One significant trade-off in this architecture is increased system complexity due to the use of multiple storage systems. Managing data consistency, integration, and pipelines across OLTP, Data Lake, Data Warehouse, and Vector Database requires additional effort.

However, this trade-off is mitigated by improved scalability, flexibility, and performance. Each system is optimized for its specific use case, enabling efficient handling of transactional workloads, analytical reporting, real-time streaming, and AI-driven search capabilities.
