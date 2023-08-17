You are given three tables:

```
create table books(id int, title varchar(250), year int, author varchar(250));

create table reviewers(id int, name varchar(250));

create table ratings(reviewer_id int, book_id int, rating int, rating_date date);
```

## Problem statement | Estimate time: 30min

Find pairs of reviewers such as that both reviewers gave a rating to the same book.

Eliminate duplicates, don't pair reviewers with themselves, and include each pair only once.

Return reviewer from first column should have full name preceding name of second reviewer in alphabetical order.

### Example output

| name1 | name2 |
| :-: | :-: |
| Chris Thomas | John Smith |
| Joe Martinez | Mike Anderson |

### Sample data

`Books:`
| id | title | year | author |
| :-: | :-: | :-: | :-: |
| 101 | A Tale Of Two Cities | 1859 | Charles Dickens |
| 102 | The Lord of the Rings | 1955 | J.R.R. Tolkien |
| 103 | The Hobbit | 1937 | NULL |
| 104 | The Little Prince | 1943 | Antoine de Saint-Exupery |

`Reviewrs:`
| id | name |
| :-: | :-: |
| 15201 | Joe Martinez |
| 53202 | Alice Lewis |
| 44203 | John Smith |

`Ratings:`
| reviewer_id | book_id | rating | rating_date |
| :-: | :-: | :-: | :-: |
| 15201 | 101 | 2 | 2015-02-11 |
| 15201 | 101 | 4 | 2015-06-16 |
| 53202 | 103 | 4 | NULL |
