use DB_B

create table re_board
(
	num			int identity(1,1)	primary key,
	name		nvarchar(20),
	pass		varchar(10),
	email		varchar(30),
	title		nvarchar(50),
	contents	nvarchar(500),
	writedate	varchar(20),
	readcnt		int,
	refer		int,
	depth		int,
	pos			int
)

select * from re_board

drop table re_board

select * from re_board where name like '김예원' 

select num, name, title, writedate, readcnt, depth, refer, pos from re_board where name like 'ab%' 

select 