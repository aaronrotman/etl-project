create table confirmed_cases
(
	id	int primary key,
	positive_cases int,
	age	varchar(10),
	sex varchar(10),
	province varchar(25),
	date	date,
	travel_yn varchar(50),
	travel_history_country varchar(50),
	locally_acquired varchar(50)
);
create table mortality
(
	id	int primary key,
	province varchar(25),
	date date,
	age varchar(10),
	sex varchar(10)
);
create table recovered
(
	id	int primary key,
	date date,
	province varchar(25),
	cumulative_recovered int
);
create table test
(
	id	int primary key,
	date date,
	province varchar(25),
	cumulative_testing int
);