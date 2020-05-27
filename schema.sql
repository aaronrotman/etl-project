drop table if exists confirmed_cases;
create table confirmed_cases
(
	id						int primary key,
	positive_cases 			int,
	age						varchar(20),
	sex 					varchar(20),
	province 				varchar(25),
	date					date,
	travel_yn 				varchar(50),
	travel_history_country 	varchar(50),
	locally_acquired 		varchar(50)
);
drop table if exists mortality;
create table mortality
(
	id						int primary key,
	province 				varchar(25),
	date 					date,
	age 					varchar(20),
	sex 					varchar(20)
);
drop table if exists recovered;
create table recovered
(
	id						int primary key,
	date 					date,
	province 				varchar(25),
	cumulative_recovered 	int
);
drop table if exists testcases;
create table testcases
(
	id						int primary key,
	date					date,
	province 				varchar(25),
	cumulative_testing 		int
);
drop table if exists summary_data;
create table summary_data
(
	id 						int primary key,
	weekno 					int,
	province 				varchar(25),
	positive_cases			int,
	recovered				int,
	test_cases				int,
	death_cases				int
);
