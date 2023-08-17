-- 
-- TRUNCATE TABLES
-- 
TRUNCATE TABLE books;
TRUNCATE TABLE ratings;
TRUNCATE TABLE reviewers;

-- 
-- INSERT FAKER DATA
-- 
-- books
INSERT INTO books (id, title, year, author) VALUES (101, 'A Tle Of Two Cities', 1859, 'Charles Dickens');
INSERT INTO books (id, title, year, author) VALUES (102, 'The Lord of the Rings', 1955, 'J.R.R. Tolkien');
INSERT INTO books (id, title, year, author) VALUES (103, 'The Hobbit', 1937, '');
INSERT INTO books (id, title, year, author) VALUES (104, 'The Little Prince', 1943, 'Antoine de Saint-Exupery');

-- reviewers
INSERT INTO reviewers (id, name) VALUES (15201, 'Joe Martinez');
INSERT INTO reviewers (id, name) VALUES (53202, 'Alice Lewis');
INSERT INTO reviewers (id, name) VALUES (44203, 'John Smith');

-- ratings
INSERT INTO ratings (reviewer_id, book_id, rating, rating_date) VALUES (15201, 101, 2, '2015-02-11');
INSERT INTO ratings (reviewer_id, book_id, rating, rating_date) VALUES (15201, 101, 4, '2015-06-16');
INSERT INTO ratings (reviewer_id, book_id, rating, rating_date) VALUES (53202, 103, 4, '');
