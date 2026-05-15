-- ctrl + Enter : 실행
/*
    여러라인 주식
*/
SELECT * FROM tab;

/*
 컬럼명, 테이블에 별칭(alias)을 지정할 수 있다.
별칭(alias)에 공백이 있을때는 " "(따옴표)를 지정한다.
*/

SELECT salary, salary*10 AS bonus

FROM employees;

-- DISTINCT은 중복제거를 한 후 출력해 주는 명령어이다.
SELECT DISTINCT first_name
FROM employees;

/*
first_name last_name
sundar     Abel
sundar     Abel
sundar     Ande
*/

SELECT DISTINCT first_name, last_name
FROM employees;
/*
first_name last_name
sundar     Abel
sundar     Abel
sundar     Ande
*/


-- SELECT 입력순서
/*
SELECT column_name1, column_name2
FROM table_name
WHERE column_name='value'
GROUP By column_name
HAVING column_name='value'
ORDER BY column_name ASC(DESC);
*/

-- SELECT 해석순서 
/*
FROM table_name
WHERE column_name='value'
GROUP By column_name
HAVING column_name='value'
SELECT column_name1, column_name2
ORDER BY column_name ASC(DESC);
*/


--employees테이블에서 salary이 3000미만일때의
--first_name, salary을 출력하라.
SELECT first_name, salary
FROM employees
WHERE salary < 3000;

--employees테이블에서 first_name컬럼의 값이 'David' 일때의
--first_name, salary을 출력하라.
SELECT first_name, salary
FROM employees
WHERE first_name = 'David';

--employees테이블에서 first_name컬럼의 값이 'David' 아닐때의
--first_name, salary을 출력하라.
SELECT first_name, salary
FROM employees
WHERE first_name != 'David';

SELECT first_name, salary
FROM employees
WHERE first_name <> 'David';

--&&(and), ||(or)
--employees테이블에서 salary이 3000, 9000, 17000일때
--first_name, hire_date, salary을 출력하라.
SELECT first_name, hire_date, salary
FROM employees
WHERE salary=3000 OR salary=9000 OR salary=17000;

SELECT first_name, hire_date, salary
FROM employees
WHERE salary IN(3000, 9000, 17000);

-- employees테이블에서 salary이 3000부터 5000까지 일때의
-- first_name, hire_date, salary을 출력하라.
SELECT first_name, hire_date, salary
FROM employees
WHERE salary >= 3000 AND salary <= 5000;

SELECT first_name, hire_date, salary
FROM employees
WHERE salary BETWEEN 3000 AND 5000;

-- employees테이블에서 job_id가 'IT_PROG'이 아닐때
-- first_name, email, job_id을 출력하라.
SELECT first_name, email, job_id
FROM employees
WHERE job_id  !=  'IT_PROG';

SELECT first_name, email, job_id
FROM employees
WHERE job_id  <> 'IT_PROG';

SELECT first_name, email, job_id
FROM employees
WHERE job_id  ^= 'IT_PROG';

SELECT first_name, email, job_id
FROM employees
WHERE  NOT ( job_id  = 'IT_PROG');

--employees테이블에서 salary이 3000, 9000, 17000이 아닐때의
--first_name, hire_date, salary을 출력하라.
SELECT first_name, hire_date, salary
FROM employees
WHERE NOT (salary=3000 OR salary=9000 OR salary=17000);

SELECT first_name, hire_date, salary
FROM employees
WHERE salary  NOT IN(3000, 9000, 17000);

-- employees테이블에서 salary이 3000부터 5000까지 아닐때의
-- first_name, hire_date, salary을 출력하라.
SELECT first_name, hire_date, salary
FROM employees
WHERE  NOT (salary >= 3000 AND salary <= 5000) ;

