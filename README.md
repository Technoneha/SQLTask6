# SQLTask6

# PostgreSQL Subqueries Examples

This project demonstrates the use of **subqueries** in PostgreSQL inside `SELECT`, `WHERE`, and `FROM` clauses, including examples with `IN`, `EXISTS`, and `=`.

## 📋 Features
- Subquery in **SELECT**: Calculating highest order amount per customer.
- Subquery in **WHERE**:
  - Using `IN` to filter customers with high-value orders.
  - Using `EXISTS` for efficient existence checks.
  - Using `=` for scalar subquery comparisons.
- Subquery in **FROM**: Creating a temporary result set for further filtering.

- ## 🗂 Tables Used

### **customers**
| customer_id (PK) | name         |
|------------------|--------------|
| 1                | Neha Mishra  |
| 2                | Amit Sharma  |
| 3                | Priya Verma  |
| 4                | Rahul Singh  |

### **orders**
| order_id (PK) | customer_id (FK) | amount |
|---------------|------------------|--------|
| 1             | 1                | 450    |
| 2             | 1                | 700    |
| 3             | 2                | 300    |
| 4             | 3                | 800    |
| 5             | 4                | 200    |
| 6             | 3                | 1500   |


## 🗂 Tables Used
1. **customers**: Holds customer details.
2. **orders**: Holds order details linked to customers.

## 🛠 SQL Topics Covered
- `CREATE TABLE` with foreign key relationships.
- `INSERT` statements for sample data.
- Subqueries in:
  - `SELECT`
  - `WHERE` with `IN`, `EXISTS`, and `=`
  - `FROM`
  
- Filtering with `ORDER BY`.

## 🚀 How to Run
1. Copy the SQL script from `subqueries_examples.sql`.
2. Run it in **pgAdmin** or PostgreSQL CLI.
3. Compare results with the expected outputs in the comments.

## 📌 Example Output
```sql
-- Example: Customers with orders above 500
name
------------
Neha Mishra
Priya Verma

