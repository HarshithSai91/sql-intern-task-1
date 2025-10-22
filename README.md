# sql-intern-task-1
Library Database Schema for Elevate Labs

## Files
- `Day_1.sql` — SQL script to create database and tables.
- `Day_1_ER_diagram.png` — ER Diagram exported from MySQL Workbench.

## Description
- Created tables: `authors`, `books`, `students`, `borrow`.
- Primary keys: `author_id`, `book_id`, `student_id`, `borrow_id`.
- Foreign keys: `books.author_id` → `authors.author_id`, `borrow.book_id` → `books.book_id`, `borrow.student_id` → `students.student_id`.
- Normalization: schema designed up to 3NF; no repeated groups, atomic fields, FKs used to avoid redundancy.

## How to run
1. Open MySQL Workbench, new query.
2. Run `Day_1.sql`.
3. Verify tables in Schemas → LibraryDB.
