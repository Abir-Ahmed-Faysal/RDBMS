# project name : garivara RDBMS
# Vehicle Rental System – Database Design & SQL Queries

## 📌 Overview

This project demonstrates the **database design, ERD relationships, and SQL querying skills** required to build a simplified **Vehicle Rental System**.  
It focuses on real-world relational database concepts such as **primary keys, foreign keys, joins, subqueries, grouping, and filtering**.

---

## 🎯 Objectives

By completing this assignment, you will be able to:

- Design an **Entity Relationship Diagram (ERD)**
- Implement **1-to-Many** and **Many-to-1** relationships
- Understand and apply **Primary Keys (PK)** and **Foreign Keys (FK)**
- Write SQL queries using:
  - `JOIN`
  - `EXISTS / NOT EXISTS`
  - `WHERE`
  - `GROUP BY` and `HAVING`

---

## 🗂️ Database Structure & Business Logic

The system manages three core entities:

- **Users**
- **Vehicles**
- **Bookings**

### 🧠 Business Rules

#### Users Table
- Stores **Admin** and **Customer** roles
- Stores name, email, password, and phone number
- Each email must be **unique**

#### Vehicles Table
- Stores vehicle name, type (`car`, `bike`, `truck`)
- Stores model year and registration number
- Registration number must be **unique**
- Stores rental price per day
- Tracks availability status:
  - `available`
  - `rented`
  - `maintenance`

#### Bookings Table
- Links users and vehicles
- Stores rental start and end dates
- Tracks booking status:
  - `pending`
  - `confirmed`
  - `completed`
  - `cancelled`
- Stores total rental cost

---

## 🧩 Part 1: ERD Design (Mandatory)

### Required Tables
- `Users`
- `Vehicles`
- `Bookings`

### Relationship Requirements
- **One-to-Many**: Users → Bookings  
- **Many-to-One**: Bookings → Vehicles  
- **Logical One-to-One**: Each booking links exactly one user and one vehicle  

### ERD Must Include
- Primary Keys (PK)
- Foreign Keys (FK)
- Relationship cardinality
- Status fields (booking status, vehicle availability)

### Submission Format
- Create ERD using **Lucidchart**
- Submit a **public, shareable ERD link**
- ❗ ERD submission is mandatory (no ERD = 0 marks)

---

## 🧪 Sample Data (Input)

### Users Table

| user_id | name     | email               | phone        | role     |
|-------:|----------|---------------------|--------------|----------|
| 1 | Alice   | alice@example.com   | 1234567890 | Customer |
| 2 | Bob     | bob@example.com     | 0987654321 | Admin    |
| 3 | Charlie | charlie@example.com | 1122334455 | Customer |

---

### Vehicles Table

| vehicle_id | name            | type  | model | registration_number | rental_price | status       |
|----------:|-----------------|-------|-------|---------------------|-------------:|--------------|
| 1 | Toyota Corolla | car   | 2022 | ABC-123 | 50  | available   |
| 2 | Honda Civic    | car   | 2021 | DEF-456 | 60  | rented      |
| 3 | Yamaha R15     | bike  | 2023 | GHI-789 | 30  | available   |
| 4 | Ford F-150     | truck | 2020 | JKL-012 | 100 | maintenance |

---

### Bookings Table

| booking_id | user_id | vehicle_id | start_date | end_date   | status     | total_cost |
|----------:|--------:|-----------:|------------|------------|------------|-----------:|
| 1 | 1 | 2 | 2023-10-01 | 2023-10-05 | completed | 240 |
| 2 | 1 | 2 | 2023-11-01 | 2023-11-03 | completed | 120 |
| 3 | 3 | 2 | 2023-12-01 | 2023-12-02 | confirmed | 60  |
| 4 | 1 | 1 | 2023-12-10 | 2023-12-12 | pending   | 100 |

---

## 🧾 Part 2: SQL Queries

> 📄 Refer to **QUERY.md** for full SQL implementations.

---

### 🔹 Query 1: JOIN

**Requirement**  
Retrieve booking information along with:
- Customer name
- Vehicle name

**Concepts Used**  
`INNER JOIN`

#### Expected Output

| booking_id | customer_name | vehicle_name    | start_date | end_date   | status     |
|----------:|---------------|-----------------|------------|------------|------------|
| 1 | Alice   | Honda Civic    | 2023-10-01 | 2023-10-05 | completed |
| 2 | Alice   | Honda Civic    | 2023-11-01 | 2023-11-03 | completed |
| 3 | Charlie | Honda Civic    | 2023-12-01 | 2023-12-02 | confirmed |
| 4 | Alice   | Toyota Corolla | 2023-12-10 | 2023-12-12 | pending   |

---

### 🔹 Query 2: EXISTS

**Requirement**  
Find all vehicles that have **never been booked**

**Concepts Used**  
`NOT EXISTS`

#### Expected Output

| vehicle_id | name        | type  | model | registration_number | rental_price | status       |
|----------:|-------------|-------|-------|---------------------|-------------:|--------------|
| 3 | Yamaha R15 | bike  | 2023 | GHI-789 | 30  | available   |
| 4 | Ford F-150 | truck | 2020 | JKL-012 | 100 | maintenance |

---

### 🔹 Query 3: WHERE

**Requirement**  
Retrieve all **available vehicles** of a specific type (e.g., cars)

**Concepts Used**  
`SELECT`, `WHERE`

#### Expected Output

| vehicle_id | name            | type | model | registration_number | rental_price | status     |
|----------:|-----------------|------|-------|---------------------|-------------:|------------|
| 1 | Toyota Corolla | car  | 2022 | ABC-123 | 50 | available |

---

### 🔹 Query 4: GROUP BY & HAVING

**Requirement**  
Find total bookings per vehicle and show only vehicles with **more than 2 bookings**

**Concepts Used**  
`GROUP BY`, `HAVING`, `COUNT`

#### Expected Output

| vehicle_name | total_bookings |
|-------------|----------------|
| Honda Civic | 3 |

---

## ✅ Conclusion

This assignment reflects real-world database modeling and querying scenarios.  
A correct ERD design combined with accurate SQL queries demonstrates strong fundamentals in **relational databases and backend logic**.


