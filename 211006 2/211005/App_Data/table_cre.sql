use DB_A
create table customer(
	custom_no varchar(10) not null,
	name	nvarchar(20) not null,
	social_no varchar(15) not null,
	tel varchar(15)
)

drop table customer