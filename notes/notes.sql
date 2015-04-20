-- CONNECTING TO THE SERVER VIA CLI
-- ——————————————————————————————————————————————————————————————————————————————————————
-- mysql --host=127.0.0.1 --user=myname --password=mypass mydb

-- 'database' a program for holding tables, comparable to a folder in your computer's file system
-- 'tables' a program concept holding data about instances of a particular entity type- students, presidents, exams, etc. these data are held in records or rows.
-- 'record' data about a particular instance, eg particular student or particualr movie. data is in a collection of fields or columns
-- 'column/field' an attribute of an entity type about which data is collected - a students name or sex, the state of origin of a president.

SELECT name, sex, student_id FROM sampdb.student;
-- selects name, sex, student_id from the data base table students. Where 'name, sex, student_id' are columns on the students table.
-- the database here is sampdb and the table is students.

SHOW TABLES from books;
-- lists the tables from a database.

DESCRIBE books.authors;
-- literally describes the table 'authors' in the database books.

/*——————————————————————————————————————————————————————————————————————————————————————
-- Data analysis requires: getting cleaning loading, 'modeling', exploring, manipulating, extracting, analyzing, reporting visualization
-- SQL is best at analysis, but all help with all of this

-- SQL is a syntax for describing tables, extracting and manipulating data from those tables.
—————————————————————————————————————————————————————————————————————————————————————— */




/* ——————————————————————————————————————————————————————————————————————————————————————
                                A STANDARD, NOT A PROGRAM



There are many SQLs: Mysql, postgres, sqlite, access, oracle, sybase, etc.

Each is an implementation of a standard: sql is basically a program's promise to behave in a defined way in response to an particular query for a particular set of data.
Most implementations are actually two programs. One is a front end/client, giving us access to a server ans showing its outputs.

MySQL Workbench
  The other is a back-end/server, holding the data and processing the queries.

MySQL
  MySQL Workbench is to MySQL as Chrome browser is to an HTTP Server.


Why SQL?
  Operated through text statements.
  Replicable. if a new query resembles a prior one, just copy and revise the prior
  Chainable: We can easily add conditions and filters. We can write a query and refer to its results in another query
—————————————————————————————————————————————————————————————————————————————————————— */


SELECT first_name, last_name, suffix, state, birth FROM sampdb.president ORDER BY birth DESC;

/*  ORDER BY several fields introduces 'Tuples'
——————————————————————————————————————————————————————————————————————————————————————*/

SELECT DISTINCT state,first_name FROM sampdb.president ORDER BY state,first_name;

-- selects only the unique records by the state, first_name records.


/*  Aggregation Functions describe Record Sets
——————————————————————————————————————————————————————————————————————————————————————
aggregation functions that operate over several rows
COUNT(*) counts records

*/

SELECT COUNT(*) FROM sampdb.president;

/*  GROUP BY
——————————————————————————————————————————————————————————————————————————————————————
*/
SELECT state, COUNT(*) FROM sampdb.president GROUP BY state ORDER BY state;
SELECT state, first_name, COUNT(*) FROM sampdb.president GROUP BY state, first_name ORDER BY COUNT(*) DESC, state, first_name LIMIT 10;

-- write a query counting presidents by first_name, ordered in descending order, limit the output to the first five names.
-- do the same for last_name

SELECT first_name, COUNT(*) FROM sampdb.president GROUP BY first_name ORDER BY COUNT(*) DESC LIMIT 5;
SELECT last_name, COUNT(*) FROM sampdb.president GROUP BY last_name ORDER BY COUNT(*) DESC LIMIT 5;

/*  FILTERING
——————————————————————————————————————————————————————————————————————————————————————
*/
SELECT first_name, last_name, state FROM sampdb.president WHERE state = 'VA';
/*
+------------+------------+-------+
| first_name | last_name  | state |
+------------+------------+-------+
| George     | Washington | VA    |
| Thomas     | Jefferson  | VA    |
| James      | Madison    | VA    |
| James      | Monroe     | VA    |
| William H. | Harrison   | VA    |
| John       | Tyler      | VA    |
| Zachary    | Taylor     | VA    |
| Woodrow    | Wilson     | VA    |
+------------+------------+-------+
8 rows in set (0.01 sec)
*/

SELECT first_name, last_name, birth, state FROM sampdb.president WHERE birth <= '1900-01-01' ORDER BY birth LIMIT 10;

/*
+-------------+------------+------------+-------+
| first_name  | last_name  | birth      | state |
+-------------+------------+------------+-------+
| George      | Washington | 1732-02-22 | VA    |
| John        | Adams      | 1735-10-30 | MA    |
| Thomas      | Jefferson  | 1743-04-13 | VA    |
| James       | Madison    | 1751-03-16 | VA    |
| James       | Monroe     | 1758-04-28 | VA    |
| Andrew      | Jackson    | 1767-03-15 | SC    |
| John Quincy | Adams      | 1767-07-11 | MA    |
| William H.  | Harrison   | 1773-02-09 | VA    |
| Martin      | Van Buren  | 1782-12-05 | NY    |
| Zachary     | Taylor     | 1784-11-24 | VA    |
+-------------+------------+------------+-------+
10 rows in set (0.01 sec)
*/

SELECT state, COUNT(*) FROM sampdb.president WHERE birth <= '1900-01-01' GROUP BY state ORDER BY COUNT(*);
/*
+-------+----------+
| state | COUNT(*) |
+-------+----------+
| MO    |        1 |
| SC    |        1 |
| TX    |        1 |
| NH    |        1 |
| PA    |        1 |
| KY    |        1 |
| NJ    |        1 |
| IA    |        1 |
| MA    |        2 |
| NC    |        2 |
| VT    |        2 |
| NY    |        4 |
| OH    |        7 |
| VA    |        8 |
+-------+----------+
14 rows in set (0.00 sec)
*/

-- FILTER BY LIST
-- ——————————————————————————————————————————————————————————————————————————————————————
SELECT first_name, last_name, state FROM sampdb.president WHERE state IN ('MA','VA') ORDER BY state;

-- Filter by tuple
-- ——————————————————————————————————————————————————————————————————————————————————————
SELECT first_name, last_name, state FROM sampdb.president WHERE (last_name, state) IN (('Adams', 'MA'), ('Roosevelt', 'NY'));

-- Filtering using WHERE, IN, & AND
SELECT first_name, last_name, state FROM sampdb.president WHERE (state) IN ('MA', 'CA', 'OH') AND (birth <= '1901-01-01') GROUP BY state;

/*
mysql> DESCRIBE sampdb.student;
+------------+------------------+------+-----+---------+----------------+
| Field      | Type             | Null | Key | Default | Extra          |
+------------+------------------+------+-----+---------+----------------+
| name       | varchar(20)      | NO   |     | NULL    |                |
| sex        | enum('F','M')    | NO   |     | NULL    |                |
| student_id | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
+------------+------------------+------+-----+---------+----------------+
3 rows in set (0.01 sec)
*/

SELECT name, sex FROM sampdb.student WHERE sex = 'F' GROUP BY name;
/*
+-----------+-----+------------+
| name      | sex | student_id |
+-----------+-----+------------+
| Megan     | F   |          1 |
| Katie     | F   |          4 |
| Abby      | F   |          5 |
| Liesl     | F   |          7 |
| Devri     | F   |         13 |
| Aubrey    | F   |         15 |
| Rebecca   | F   |         16 |
| Rianne    | F   |         19 |
| Avery     | F   |         20 |
| Lauren    | F   |         21 |
| Becca     | F   |         22 |
| Sarah     | F   |         24 |
| Gabrielle | F   |         29 |
| Grace     | F   |         30 |
| Emily     | F   |         31 |
+-----------+-----+------------+
15 rows in set (0.01 sec)
*/

-- students with scores for test event 3
-- students with scores for test event 3, with scores greater than 15
-- Presidents alive during the civil war

/*
mysql> DESCRIBE sampdb.president;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| last_name  | varchar(15) | NO   |     | NULL    |       |
| first_name | varchar(15) | NO   |     | NULL    |       |
| suffix     | varchar(5)  | YES  |     | NULL    |       |
| city       | varchar(20) | NO   |     | NULL    |       |
| state      | varchar(2)  | NO   |     | NULL    |       |
| birth      | date        | NO   |     | NULL    |       |
| death      | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)
*/

SELECT last_name, first_name, birth, death FROM sampdb.president WHERE birth <= '1861-01-01' AND death >= '1865-01-01';
/*
+-----------+---------------+------------+------------+
| last_name | first_name    | birth      | death      |
+-----------+---------------+------------+------------+
| Fillmore  | Millard       | 1800-01-07 | 1874-03-08 |
| Pierce    | Franklin      | 1804-11-23 | 1869-10-08 |
| Buchanan  | James         | 1791-04-23 | 1868-06-01 |
| Lincoln   | Abraham       | 1809-02-12 | 1865-04-15 |
| Johnson   | Andrew        | 1808-12-29 | 1875-07-31 |
| Grant     | Ulysses S.    | 1822-04-27 | 1885-07-23 |
| Hayes     | Rutherford B. | 1822-10-04 | 1893-01-17 |
| Garfield  | James A.      | 1831-11-19 | 1881-09-19 |
| Arthur    | Chester A.    | 1829-10-05 | 1886-11-18 |
| Cleveland | Grover        | 1837-03-18 | 1908-06-24 |
| Harrison  | Benjamin      | 1833-08-20 | 1901-03-13 |
| McKinley  | William       | 1843-01-29 | 1901-09-14 |
| Roosevelt | Theodore      | 1858-10-27 | 1919-01-06 |
| Taft      | William H.    | 1857-09-15 | 1930-03-08 |
| Wilson    | Woodrow       | 1856-12-19 | 1924-02-03 |
+-----------+---------------+------------+------------+
15 rows in set (0.01 sec)
*/

SELECT student.name, score.score
  FROM sampdb.student
  LEFT JOIN sampdb.score
  ON (sampdb.score.student_id = sampdb.student.student_id)
  WHERE score >= 60 AND event_id = 3
  ORDER BY score.score DESC;

/*
+-----------+-------+
| name      | score |
+-----------+-------+
| Abby      |    97 |
| Max       |    96 |
| Lauren    |    91 |
| Carter    |    90 |
| Megan     |    88 |
| Liesl     |    88 |
| Keaton    |    86 |
| Joseph    |    84 |
| Nathan    |    83 |
| Colin     |    83 |
| Gregory   |    81 |
| Becca     |    81 |
| Emily     |    81 |
| Robbie    |    79 |
| Grace     |    79 |
| Will      |    79 |
| Rianne    |    79 |
| Thomas    |    77 |
| Avery     |    76 |
| Ian       |    75 |
| Aubrey    |    75 |
| Michael   |    74 |
| Peter     |    72 |
| Katie     |    71 |
| Kyle      |    69 |
| Teddy     |    68 |
| Ben       |    68 |
| Devri     |    67 |
| Gabrielle |    66 |
| Sarah     |    62 |
| Rebecca   |    60 |
+-----------+-------+
31 rows in set (0.01 sec)

*/


-- CONCAT() combines strings
-- takes those strings and adds them together
SELECT CONCAT(first_name, ' ', last_name) AS full_name,city,state FROM sampdb.president WHERE state = 'VA';
/*
+---------------------+---------------------+-------+
| full_name           | city                | state |
+---------------------+---------------------+-------+
| George Washington   | Wakefield           | VA    |
| Thomas Jefferson    | Albemarle County    | VA    |
| James Madison       | Port Conway         | VA    |
| James Monroe        | Westmoreland County | VA    |
| William H. Harrison | Berkeley            | VA    |
| John Tyler          | Greenway            | VA    |
| Zachary Taylor      | Orange County       | VA    |
| Woodrow Wilson      | Staunton            | VA    |
+---------------------+---------------------+-------+
8 rows in set (0.01 sec)
*/

SELECT event_id, student_id, score, score *2 AS doubled FROM sampdb.score LIMIT 10;
/*
+----------+------------+-------+---------+
| event_id | student_id | score | doubled |
+----------+------------+-------+---------+
|        1 |          1 |    20 |      40 |
|        1 |          3 |    20 |      40 |
|        1 |          4 |    18 |      36 |
|        1 |          5 |    13 |      26 |
|        1 |          6 |    18 |      36 |
|        1 |          7 |    14 |      28 |
|        1 |          8 |    14 |      28 |
|        1 |          9 |    11 |      22 |
|        1 |         10 |    19 |      38 |
|        1 |         11 |    18 |      36 |
+----------+------------+-------+---------+
10 rows in set (0.01 sec)
*/


SELECT last_name, birth, death, DATEDIFF(death, birth) AS days, DATEDIFF(death,birth) / 365 AS years
FROM sampdb.president
WHERE death IS NOT NULL
limit 10;

/*
+------------+------------+------------+-------+---------+
| last_name  | birth      | death      | days  | years   |
+------------+------------+------------+-------+---------+
| Washington | 1732-02-22 | 1799-12-14 | 24767 | 67.8548 |
| Adams      | 1735-10-30 | 1826-07-04 | 33119 | 90.7370 |
| Jefferson  | 1743-04-13 | 1826-07-04 | 30397 | 83.2795 |
| Madison    | 1751-03-16 | 1836-06-28 | 31150 | 85.3425 |
| Monroe     | 1758-04-28 | 1831-07-04 | 26729 | 73.2301 |
| Adams      | 1767-07-11 | 1848-02-23 | 29446 | 80.6740 |
| Jackson    | 1767-03-15 | 1845-06-08 | 28574 | 78.2849 |
| Van Buren  | 1782-12-05 | 1862-07-24 | 29085 | 79.6849 |
| Harrison   | 1773-02-09 | 1841-04-04 | 24890 | 68.1918 |
| Tyler      | 1790-03-29 | 1862-01-18 | 26227 | 71.8548 |
+------------+------------+------------+-------+---------+
10 rows in set (0.01 sec)
*/


SELECT LOCATE(' ', 'cat on the mat') AS locate_example;
SELECT LEFT('cat on the mat', 3) AS left_example;
SELECT LEFT('cat on the mat', LOCATE(' ', 'cat on the mat')) AS nested_example;
/*
+----------------+
| nested_example |
+----------------+
| cat            |
+----------------+
*/

SELECT MID('cat on the mat', 5, 2) AS mid_example;
/*
+-------------+
| mid_example |
+-------------+
| on          |
+-------------+
*/

-- use logic functions to handle edge cases
-- ——————————————————————————————————————————————————————————————————————————————————————
SELECT
  first_name,
  LOCATE(' ', first_name) AS first_space,
  IF( -- if takes 3 expressions, 1: expression evaluates to boolean, 2: execute if true, 3: execute if false
      LOCATE(' ', first_name) = 0,
      first_name,
      LEFT(first_name, LOCATE(' ', first_name) - 1)
    ) AS proper_first,
  LEFT(first_name, LOCATE(' ', first_name) -1) AS just_first,
  MID(first_name, LOCATE(' ', first_name), )
FROM sampdb.president


SELECT
  MONTH(birth),
  last_name,
  birth
FROM
  sampdb.president
WHERE death IS NOT NULL
GROUP BY MONTH(birth) ;

/*
+--------------+------------+------------+
| MONTH(birth) | last_name  | birth      |
+--------------+------------+------------+
|            1 | Fillmore   | 1800-01-07 |
|            2 | Washington | 1732-02-22 |
|            3 | Madison    | 1751-03-16 |
|            4 | Jefferson  | 1743-04-13 |
|            5 | Truman     | 1884-05-08 |
|            7 | Adams      | 1767-07-11 |
|            8 | Harrison   | 1833-08-20 |
|            9 | Taft       | 1857-09-15 |
|           10 | Adams      | 1735-10-30 |
|           11 | Polk       | 1795-11-02 |
|           12 | Van Buren  | 1782-12-05 |
+--------------+------------+------------+
*/

-- Logical functions
/*
  CASE is the sql standard.
*/
SELECT
  CASE WHEN 2 > 1 THEN 'it is true'
  ELSE 'it is false'
  END;


-- INNER JOIN
-- ——————————————————————————————————————————————————————————————————————————————————————
SELECT student.name, student.sex, score.event_id, score.score
FROM sampdb.student
INNER JOIN sampdb.score
ON score.student_id = student.student_id
WHERE score >= 60 AND event_id = 6 AND student.sex = 'F';

/*
+-----------+-----+----------+-------+
| name      | sex | event_id | score |
+-----------+-----+----------+-------+
| Megan     | F   |        6 |   100 |
| Katie     | F   |        6 |    74 |
| Abby      | F   |        6 |    97 |
| Liesl     | F   |        6 |    76 |
| Aubrey    | F   |        6 |    62 |
| Rebecca   | F   |        6 |    98 |
| Rianne    | F   |        6 |    74 |
| Avery     | F   |        6 |    62 |
| Lauren    | F   |        6 |    73 |
| Becca     | F   |        6 |    95 |
| Sarah     | F   |        6 |    68 |
| Gabrielle | F   |        6 |    66 |
| Grace     | F   |        6 |    68 |
| Emily     | F   |        6 |    76 |
+-----------+-----+----------+-------+
*/

SELECT titles.title_name,authors.au_fname,authors.au_lname
FROM books.titles
INNER JOIN books.title_authors
INNER JOIN books.authors
WHERE titles.title_id = title_authors.title_id
AND title_authors.au_id = authors.au_id;

/*
+-------------------------------------+-----------+-----------+
| title_name                          | au_fname  | au_lname  |
+-------------------------------------+-----------+-----------+
| 1977!                               | Sarah     | Buchman   |
| 200 Years of German Humor           | Sarah     | Buchman   |
| Ask Your System Administrator       | Christian | Kells     |
| But I Did It Unconsciously          | Hallie    | Hull      |
| But I Did It Unconsciously          | Klee      | Hull      |
| Exchange of Platitudes              | Klee      | Hull      |
| How About Never?                    | Wendy     | Heydemark |
| I Blame My Mother                   | Wendy     | Heydemark |
| I Blame My Mother                   | Klee      | Hull      |
| Just Wait Until After School        |           | Kellsey   |
| Kiss My Boo-Boo                     |           | Kellsey   |
| Not Without My Faberge Egg          | Wendy     | Heydemark |
| Perhaps It's a Glandular Problem    | Hallie    | Hull      |
| Perhaps It's a Glandular Problem    | Klee      | Hull      |
| Perhaps It's a Glandular Problem    |           | Kellsey   |
| Spontaneous, Not Annoying           | Wendy     | Heydemark |
| What Are The Civilian Applications? | Sarah     | Buchman   |
+-------------------------------------+-----------+-----------+
*/

/*
DESCRIBE books.employees;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | char(3)     | NO   | PRI | NULL    |       |
| emp_name | varchar(20) | NO   |     | NULL    |       |
| boss_id  | char(3)     | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

DESCRIBE books.empsales;
+--------+---------+------+-----+---------+-------+
| Field  | Type    | Null | Key | Default | Extra |
+--------+---------+------+-----+---------+-------+
| emp_id | char(3) | NO   | PRI | NULL    |       |
| sales  | int(11) | NO   |     | NULL    |       |
+--------+---------+------+-----+---------+-------+

*/


SELECT employees.emp_name, empsales.sales, employees.emp_id, empsales.emp_id
FROM books.employees
INNER JOIN books.empsales
ON employees.emp_id = empsales.emp_id;

/*
+-------------------+-------+
| emp_name          | sales |
+-------------------+-------+
| Lord Copper       |   600 |
| Jocelyn Hitchcock |   800 |
| Mr. Salter        |   500 |
| William Boot      |   500 |
| Mr. Corker        |   700 |
+-------------------+-------+
*/

-- subqueries, embed one query wihtin another
-- ——————————————————————————————————————————————————————————————————————————————————————
SELECT pub_name
FROM books.publishers
WHERE pub_id IN ( SELECT pub_id FROM books.titles WHERE type = 'biography');

/*
+---------------------+
| pub_name            |
+---------------------+
| Abatis Publishers   |
| Schadenfreude Press |
+---------------------+
*/

SELECT event_id,score,student.name
FROM sampdb.score
INNER JOIN sampdb.student
ON sampdb.score.student_id = sampdb.student.student_id
WHERE event_id = 3
AND score > (SELECT AVG(score) FROM sampdb.score WHERE event_id = 3 GROUP BY event_id)
LIMIT 5;

/*
+----------+-------+--------+
| event_id | score | name   |
+----------+-------+--------+
|        3 |    88 | Megan  |
|        3 |    84 | Joseph |
|        3 |    97 | Abby   |
|        3 |    83 | Nathan |
|        3 |    88 | Liesl  |
+----------+-------+--------+
*/

-- revise the query to get below avg scores for event 2

SELECT event_id,score,student.name
FROM sampdb.score
INNER JOIN sampdb.student
ON sampdb.score.student_id = sampdb.student.student_id
WHERE event_id = 2
AND score < (SELECT AVG(score) FROM sampdb.score WHERE event_id = 2
GROUP BY event_id);
/*
+----------+-------+---------+
| event_id | score | name    |
+----------+-------+---------+
|        2 |     8 | Joseph  |
|        2 |    13 | Kyle    |
|        2 |    13 | Katie   |
|        2 |    13 | Nathan  |
|        2 |     8 | Ian     |
|        2 |     9 | Rebecca |
|        2 |    13 | Will    |
|        2 |     9 | Max     |
|        2 |    11 | Rianne  |
|        2 |    12 | Lauren  |
|        2 |    10 | Becca   |
|        2 |    10 | Robbie  |
|        2 |     8 | Carter  |
|        2 |    13 | Teddy   |
|        2 |    12 | Grace   |
+----------+-------+---------+
*/


/*
DESCRIBE books.employees;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | char(3)     | NO   | PRI | NULL    |       |
| emp_name | varchar(20) | NO   |     | NULL    |       |
| boss_id  | char(3)     | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+

DESCRIBE books.empsales;
+--------+---------+------+-----+---------+-------+
| Field  | Type    | Null | Key | Default | Extra |
+--------+---------+------+-----+---------+-------+
| emp_id | char(3) | NO   | PRI | NULL    |       |
| sales  | int(11) | NO   |     | NULL    |       |
+--------+---------+------+-----+---------+-------+
*/


-- employees with above average sales
SELECT emp_name, employees.emp_id, empsales.emp_id, sales
FROM books.employees
INNER JOIN books.empsales
ON empsales.emp_id = employees.emp_id
WHERE sales > ( SELECT AVG(sales) FROM books.empsales )

/*
+-------------------+--------+--------+-------+
| emp_name          | emp_id | emp_id | sales |
+-------------------+--------+--------+-------+
| Lord Copper       | E01    | E01    |   600 |
| Jocelyn Hitchcock | E02    | E02    |   800 |
| Mr. Corker        | E05    | E05    |   700 |
+-------------------+--------+--------+-------+
*/

-- average age of the presidents in the database
SELECT AVG(DATEDIFF(death, birth) / 365) FROM sampdb.president WHERE death IS NOT NULL;


-- ——————————————————————————————————————————————————————————————————————————————————————
/* DESCRIBE sampdb.president;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| last_name  | varchar(15) | NO   |     | NULL    |       |
| first_name | varchar(15) | NO   |     | NULL    |       |
| suffix     | varchar(5)  | YES  |     | NULL    |       |
| city       | varchar(20) | NO   |     | NULL    |       |
| state      | varchar(2)  | NO   |     | NULL    |       |
| birth      | date        | NO   |     | NULL    |       |
| death      | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+ */

SELECT CONCAT(first_name, ' ', last_name) AS full_name, DATEDIFF(death, birth) / 365 AS years_old
FROM sampdb.president
WHERE DATEDIFF(death, birth) > (SELECT AVG(DATEDIFF(death, birth)) FROM sampdb.president WHERE death IS NOT NULL);
-- presidents who lived longer than the average
/*
+----------------------+-----------+
| full_name            | years_old |
+----------------------+-----------+
| John Adams           |   90.7370 |
| Thomas Jefferson     |   83.2795 |
| James Madison        |   85.3425 |
| James Monroe         |   73.2301 |
| John Quincy Adams    |   80.6740 |
| Andrew Jackson       |   78.2849 |
| Martin Van Buren     |   79.6849 |
| John Tyler           |   71.8548 |
| Millard Fillmore     |   74.2137 |
| James Buchanan       |   77.1589 |
| Grover Cleveland     |   71.3151 |
| William H. Taft      |   72.5233 |
| Herbert C. Hoover    |   90.2548 |
| Harry S Truman       |   88.6932 |
| Dwight D. Eisenhower |   78.5041 |
| Richard M. Nixon     |   81.3370 |
| Gerald R. Ford       |   93.5151 |
| Ronald W. Reagan     |   93.3918 |
+----------------------+-----------+
*/


SELECT CONCAT(first_name, ' ', last_name) AS full_name, DATEDIFF(death, birth) / 365 AS years_old
FROM sampdb.president
WHERE DATEDIFF(death, birth) = (SELECT MIN(age) FROM (SELECT DATEDIFF(death, birth) AS age FROM sampdb.president ORDER BY age DESC LIMIT 3) as tmp);
-- returns
/*
+------------+-----------+
| full_name  | years_old |
+------------+-----------+
| John Adams |   90.7370 |
+------------+-----------+
*/

-- returns the age of the 3rd longest-living president
SELECT MIN(age)
FROM (SELECT DATEDIFF(death, birth) AS age FROM sampdb.president ORDER BY age DESC LIMIT 3) as tmp;















