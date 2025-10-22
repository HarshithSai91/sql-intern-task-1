CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Authors(
author_id int AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(100) NOT NULL
);

CREATE TABLE Books(
book_id int AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
author_id int,
FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Students(
student_id int AUTO_INCREMENT PRIMARY KEY,
student_name VARCHAR(100),
course VARCHAR(50)
);

CREATE TABLE Borrow(
borrow_id int AUTO_INCREMENT PRIMARY KEY,
student_id int,
book_id int,
borrow_date DATE,
return_date DATE,
FOREIGN KEY (book_id) REFERENCES Books(book_id),
FOREIGN KEY (student_id) REFERENCES Students(student_id)
);