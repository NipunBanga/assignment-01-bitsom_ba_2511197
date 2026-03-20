## Storage Systems

The architecture uses multiple specialized storage systems to address different requirements of the hospital data platform. PostgreSQL is used as the OLTP database to store structured patient data such as demographics, treatment history, and transactional records. It ensures ACID compliance, which is critical for maintaining data accuracy and reliability in healthcare systems.

A Data Lake is used to store raw and unstructured data, including ICU device streams, logs, and medical documents. This enables scalable storage and supports advanced analytics and machine learning use cases such as predicting patient readmission risk.

A Data Warehouse is used for analytical reporting. It stores cleaned and structured data optimized for fast querying, enabling reports such as bed occupancy, department-wise costs, and operational performance metrics.

A Vector Database is used to support semantic search over patient records and clinical documents. It allows doctors to query patient history in natural language by retrieving contextually relevant information rather than relying on keyword matching.

## OLTP vs OLAP Boundary

The OLTP system consists of the PostgreSQL database, where real-time transactions such as patient admissions, treatment updates, and discharge records are handled. This system prioritizes consistency, integrity, and low latency.

The OLAP system begins at the Data Warehouse layer, where data from the OLTP system and Data Lake is transformed and aggregated for reporting and analytics. The Data Lake acts as an intermediate storage layer that holds raw data before it is processed for analytical workloads.

## Trade-offs

One significant trade-off in this architecture is increased system complexity due to the use of multiple storage systems. Managing data pipelines, synchronization, and integration across PostgreSQL, Data Lake, Data Warehouse, and Vector Database requires additional operational effort.

However, this trade-off is justified by the benefits it provides. Each system is optimized for its specific purpose, enabling efficient handling of transactional workloads, large-scale data storage, analytical reporting, and AI-driven semantic search. This results in a scalable, flexible, and high-performance architecture suitable for modern healthcare needs.
