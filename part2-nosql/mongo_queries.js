// OP1: insertMany()

db.products.insertMany(sample_documents)


// OP2: find electronics > 20000

db.products.find(
{category:"Electronics", price:{$gt:20000}}
)


// OP3: groceries expiring before 2025

db.products.find(
{category:"Groceries", expiry_date:{$lt:"2025-01-01"}}
)


// OP4: updateOne add discount

db.products.updateOne(
{name:"Samsung Smart TV"},
{$set:{discount_percent:10}}
)


// OP5: create index

db.products.createIndex({category:1})
