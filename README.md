# SQL Script: Products Table with CRUD and Data Handling

## 📝 Description

The script focuses on the following:

1. Creating a `Products` table with appropriate data types and default values.
2. Inserting rows using `INSERT INTO`, including:
   - Complete rows
   - Rows with default values
   - Rows with `NULL`
3. Updating specific records using `UPDATE` with a `WHERE` condition.
4. Deleting specific records using `DELETE` with a `WHERE` condition.

---

## 🗃️ Table Structure

**Table Name:** `Products`

| Column         | Data Type       | Description                              |
|----------------|------------------|------------------------------------------|
| `ProductID`    | `INT`            | Primary Key, Auto-incremented            |
| `ProductName`  | `VARCHAR(100)`   | Name of the product (**NOT NULL**)       |
| `Category`     | `VARCHAR(50)`    | Product category (**nullable**)          |
| `Price`        | `DECIMAL(10,2)`  | Product price (**default = 0.00**)       |
| `StockQuantity`| `INT`            | Quantity in stock (**default = 0**)      |

---

## ⚙️ Operations Performed

### ✅ Table Creation
Creates a `Products` table with columns that support default and null values.

### ✅ Insert Operations
- Full row with all values
- Row with missing `Price` and `StockQuantity` (uses default)
- Row with `NULL` explicitly for `Category`

### ✅ Update Operation
- Updates the `Price` of the product named **Mouse**

### ✅ Delete Operation
- Deletes the product named **Notebook**

## 💡 Notes

- `DEFAULT` values ensure consistency when data is missing.
- `NULL` is used explicitly when the field is optional (e.g., `Category`).
- All update and delete operations use `WHERE` conditions to prevent accidental changes to other records.
- `IDENTITY(1,1)` is used to auto-increment `ProductID` (SQL Server specific).

## 📌 Usage

This script can be executed in:

- **Microsoft SQL Server**
- **Azure Data Studio**
- **MySQL Workbench** (replace `IDENTITY` with `AUTO_INCREMENT`)
- **PostgreSQL** (use `SERIAL` or `GENERATED` for auto-increment)



