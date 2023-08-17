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
INSERT INTO books (id, title, year, author) VALUES
    (101, 'To Kill a Mockingbird', 1960, 'Harper Lee'),
    (102, '1984', 1949, 'George Orwell'),
    (103, 'Pride and Prejudice', 1813, 'Jane Austen'),
    (104, 'The Great Gatsby', 1925, 'F. Scott Fitzgerald'),
    (105, 'Moby-Dick', 1851, 'Herman Melville'),
    (106, 'One Hundred Years of Solitude', 1967, 'Gabriel García Márquez'),
    (107, 'War and Peace', 1869, 'Leo Tolstoy'),
    (108, 'The Catcher in the Rye', 1951, 'J.D. Salinger'),
    (109, 'Jane Eyre', 1847, 'Charlotte Brontë'),
    (110, 'The Lord of the Rings', 1954, 'J.R.R. Tolkien'),
    (111, 'To the Lighthouse', 1927, 'Virginia Woolf'),
    (112, 'Brave New World', 1932, 'Aldous Huxley'),
    (113, 'The Brothers Karamazov', 1880, 'Fyodor Dostoevsky'),
    (114, 'The Grapes of Wrath', 1939, 'John Steinbeck'),
    (115, 'Anna Karenina', 1877, 'Leo Tolstoy'),
    (116, 'Frankenstein', 1818, 'Mary Shelley'),
    (117, 'The Picture of Dorian Gray', 1890, 'Oscar Wilde'),
    (118, 'The Hobbit', 1937, 'J.R.R. Tolkien'),
    (119, 'Gone with the Wind', 1936, 'Margaret Mitchell'),
    (120, 'Don Quixote', 1605, 'Miguel de Cervantes');

-- reviewers
INSERT INTO reviewers (id, name) VALUES
    (15201, 'Michiko Kakutani'),
    (15202, 'James Wood'),
    (15203, 'Dwight Garner'),
    (15204, 'Sarah Weinman'),
    (15205, 'Ron Charles'),
    (15206, 'Maureen Corrigan'),
    (15207, 'Laura Miller'),
    (15208, 'Lev Grossman'),
    (15209, 'Parul Sehgal'),
    (15210, 'Sam Sacks'),
    (15211, 'Jennifer Senior'),
    (15212, 'Laura Miller'),
    (15213, 'A.O. Scott'),
    (15214, 'Katie Roiphe'),
    (15215, 'Marion Winik'),
    (15216, 'Charles McGrath'),
    (15217, 'Julia Keller'),
    (15218, 'Laura Lippman'),
    (15219, 'Dwight Young'),
    (15220, 'David Ulin');

-- ratings
INSERT INTO ratings (reviewer_id, book_id, rating, rating_date) VALUES
    -- Ratings for Michiko Kakutani (reviewer_id: 15201)
    (15201, 101, 5, '2020-03-10'),
    (15201, 101, 4, '2018-07-22'),
    (15201, 105, 3, '2019-11-05'),
    -- Ratings for James Wood (reviewer_id: 15202)
    (15202, 104, 4, '2017-05-16'),
    (15202, 106, 5, '2018-10-01'),
    (15202, 108, 2, '2016-08-14'),
    -- Ratings for Dwight Garner (reviewer_id: 15203)
    (15203, 103, 3, '2017-12-03'),
    (15203, 107, 4, '2019-02-18'),
    (15203, 120, 5, '2020-06-30'),
    -- Ratings for Sarah Weinman (reviewer_id: 15204)
    (15204, 101, 4, '2016-11-20'),
    (15204, 111, 3, '2018-04-11'),
    (15204, 116, 2, '2017-09-28'),
    -- Ratings for Ron Charles (reviewer_id: 15205)
    (15205, 113, 5, '2017-08-05'),
    (15205, 114, 4, '2019-01-25'),
    (15205, 118, 3, '2016-06-12'),
    -- Ratings for Maureen Corrigan (reviewer_id: 15206)
    (15206, 102, 5, '2015-03-18'),
    (15206, 105, 4, '2017-09-01'),
    (15206, 119, 3, '2016-11-10'),
    -- Ratings for Laura Miller (reviewer_id: 15207)
    (15207, 108, 2, '2018-07-10'),
    (15207, 112, 3, '2019-03-22'),
    (15207, 117, 4, '2017-12-15'),
    -- Ratings for Lev Grossman (reviewer_id: 15208)
    (15208, 110, 5, '2019-06-05'),
    (15208, 115, 4, '2015-08-30'),
    (15208, 120, 3, '2018-02-14'),
    -- Ratings for Parul Sehgal (reviewer_id: 15209)
    (15209, 103, 4, '2020-01-10'),
    (15209, 118, 5, '2017-04-02'),
    (15209, 118, 2, '2019-09-19'),
    -- Ratings for Sam Sacks (reviewer_id: 15210)
    (15210, 101, 3, '2016-06-08'),
    (15210, 105, 4, '2018-11-14'),
    (15210, 111, 5, '2020-04-30');
