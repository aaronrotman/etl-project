-- Query to check successful load

select * from confirmed_cases;
select * from mortality;
select * from recovered;
select * from testcases;

-- Query summary table order by province, weekno

select * from summary_data order by province, weekno;


