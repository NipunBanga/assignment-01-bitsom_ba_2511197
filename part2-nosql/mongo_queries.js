// OP1: insertMany()
db.products.insertMany([
  {
    name: "Samsung Galaxy S23",
    category: "Electronics",
    price: 75000,
    specs: { brand: "Samsung", warranty_years: 1 }
  },
  {
    name: "Men Cotton T-Shirt",
    category: "Clothing",
    price: 1200,
    attributes: { size: ["S","M","L"], material: "Cotton" }
  },
  {
    name: "Organic Milk",
    category: "Groceries",
    price: 60,
    details: { expiry_date: new Date("2024-12-30") }
  }
]);

// OP2: find()
db.products.find({ category: "Electronics", price: { $gt: 20000 } });

// OP3: find()
db.products.find({ category: "Groceries", "details.expiry_date": { $lt: new Date("2025-01-01") } });

// OP4: updateOne()
db.products.updateOne(
  { name: "Samsung Galaxy S23" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex()
db.products.createIndex({ category: 1 });
// Improves query performance for category-based searches