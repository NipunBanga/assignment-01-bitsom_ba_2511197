## Anomaly Analysis

### Insert Anomaly

In the orders_flat.csv dataset, product-related fields such as product_name and price exist only within order records. This means a new product cannot be added independently unless an order is created. For example, if a new product like "Smart Watch" needs to be introduced but has not yet been ordered, it cannot be inserted into the system without creating a dummy order entry. This restricts proper product catalog management.

### Update Anomaly

Customer and product information is redundantly stored across multiple rows. For instance, if a customer from Mumbai appears in multiple orders, the city field is repeated in each row. If the city name needs to be updated (e.g., from "Mumbai" to "Mumbai City"), it must be updated across all such rows. Missing even one row leads to inconsistent data. Similarly, if a product price changes, it must be updated in every row where that product appears, increasing the risk of data inconsistency.

### Delete Anomaly

Deleting a record may result in unintended data loss. For example, if the only order containing a specific product is deleted, all information related to that product (such as product_name and price) is also lost. Similarly, deleting the last order of a customer would remove all information about that customer, including their customer_name and city, even though that data should persist independently.

## Normalization Justification

Keeping all data in a single flat table may seem simple but leads to significant redundancy and data integrity issues. In the given dataset, customer details, product information, and order transactions are stored together, causing repeated entries whenever a customer places multiple orders or a product appears in multiple transactions.

This redundancy results in multiple anomalies. For example, updating a product price requires modifying every row where that product appears, increasing the likelihood of inconsistencies. Similarly, inserting a new product without an associated order is not possible, and deleting an order may lead to the loss of important customer or product information.

Normalization resolves these issues by separating the data into logically distinct tables such as customers, products, orders, and order_items. Each table represents a single entity and is connected using primary and foreign keys. This eliminates redundancy, ensures consistency, and improves scalability.

Therefore, normalizing the schema to Third Normal Form (3NF) is essential for maintaining accurate, reliable, and efficient data management.
