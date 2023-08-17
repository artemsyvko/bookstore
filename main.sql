-- 
-- CREATE TABLES
-- 
CREATE TABLE books(id INT, title VARCHAR(250), year INT, author VARCHAR(250));

CREATE TABLE reviewers(id INT, name VARCHAR(250));

CREATE TABLE ratings(reviewer_id INT, book_id INT, rating INT, rating_date DATE);
