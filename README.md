# SQL Workshop 4/18

## Instructions to populate your local databases

- Install [Homebrew](http://brew.sh/)
- `$ brew update`
- `$ brew doctor`
- `$ brew install mysql`
- `$ mysql --host=127.0.0.1 --user=root`
- `$ source /path/to/sql_bootcamp_setup/data/sampdb/mysql/setup_sampdb.sql`
- `$ source /path/to/sql_bootcamp_setup/data/books/books_mysql.sql`

## Run some queries

- `$ SHOW TABLES from books;`
- `$ DESCRIBE books.authors;`
- `$ SELECT COUNT(*) FROM sampdb.president;`
- `$ SELECT last_name, first_name, birth, death FROM sampdb.president WHERE birth <= '1861-01-01' AND death >= '1865-01-01';`
- `$ SELECT event_id,score,student.name FROM sampdb.score INNER JOIN sampdb.student ON sampdb.score.student_id = sampdb.student.student_id WHERE event_id = 3 AND score > (SELECT AVG(score) FROM sampdb.score WHERE event_id = 3 GROUP BY event_id) LIMIT 5;`