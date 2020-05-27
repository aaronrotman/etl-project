-- Query to check successful load

select * from confirmed_cases;
select * from mortality;
select * from recovered;
select * from testcases;

-- Query summary table order by province, weekno

select * from summary_data order by province, weekno;

-- grouping query ...

drop view gender_summary;
create view gender_summary as
select province, sex, sum(positive_cases) as gender_cases
from confirmed_cases
group by province, sex
order by province, sex;

select * from gender_summary;

drop view cases_agegroup;
create view cases_agegroup as
select province, age, sum(positive_cases) as agegroup_cases
from confirmed_cases
group by province, age;

select * from cases_agegroup order by province;

drop view total_cases;
create view total_cases as
select province, sum(positive_cases) total_cases
from confirmed_cases
group by province;

-- final results from view..
select a.province, total_cases,	b.sex, b.gender_cases, c.age, c.agegroup_cases
from total_cases a, gender_summary b, cases_agegroup c
where a.province = b.province
  and c.province = b.province
order by a.province;
