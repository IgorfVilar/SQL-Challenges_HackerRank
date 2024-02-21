/**** SQL CHALLENGES HACKERRANK ****/


/* Table 1 - Station */
 
1. (select city, length(city) from station
order by length(city) asc, city limit 1)
union
(select city, length(city) from station
order by length(city) desc, city limit 1);

2. select distinct city from station
where left(city,1) in ('a','e','i','o','u');

3. select distinct city from station
where left(city,1) in ('a','e','i','o','u') and right(city,1) in ('a','e','i','o','u'); 

4. select distinct city from station
where left(city, 1) not in ('a','e','i','o','u') and right(city, 1) not in ('a','e','i','o','u');

5. select round(sum(LAT_N),4) from station
where LAT_N > 38.7880 and LAT_N < 137.2345;

6. select round(min(LAT_N),4) from station
where LAT_N > 38.7780;


/* Tables 2 and 3 - City and Country */

1. select sum(c.population) from city c
inner join country t
on c.countrycode = t.code
where t.CONTINENT = "Asia";

2. select c.name from city c
inner join country t
on c.countrycode = t.code
where t.continent = 'Africa';

3. select COUNTRY.Continent, floor(avg(CITY.Population)) from city
inner join country
on city.countrycode = country.code
group by country.continent;


/* Tables 4 and 5 - Employees */

1. select name from employee
order by name;

2. select name from employee
where salary > 2000 and months < 10
order by employee_id asc;

3. select max(salary*months), count(*) from employee
where salary*months in (select max(salary*months) from employee);