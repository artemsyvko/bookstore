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

CREATE VIEW matched_reviewers AS
SELECT DISTINCT r1.reviewer AS name1, r2.reviewer AS name2
FROM book_reviewer_rating AS r1
JOIN
	book_reviewer_rating AS r2 ON r1.id = r2.id
WHERE r1.reviewer_id != r2.reviewer_id
ORDER BY r1.reviewer
	;