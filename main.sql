-- 
-- CREATE DATABASE
-- 
DROP DATABASE bookstore;
CREATE DATABASE bookstore;
USE bookstore;

-- 
-- CREATE TABLES
-- 
CREATE TABLE books(id INT, title VARCHAR(250), year INT, author VARCHAR(250));

CREATE TABLE reviewers(id INT, name VARCHAR(250));

CREATE TABLE ratings(reviewer_id INT, book_id INT, rating INT, rating_date DATE);

-- 
-- CREATING VIEWS
-- 
CREATE VIEW book_reviewer_rating AS
SELECT
    bo.id,
    bo.title,
    bo.year,
    bo.author,
    ra.reviewer_id,
    re.name AS reviewer,
    ra.rating,
    ra.rating_date
FROM books AS bo
JOIN
    ratings AS ra ON bo.id = ra.book_id
JOIN
    reviewers AS re ON ra.reviewer_id = re.id
    ;