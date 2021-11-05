use DB_A

create table mailing_list(
	e_addr varchar(255) not null primary key,
	reg_date	date not null
)

select * from mailing_list

create table album
(
	num			int  identity(1,1) primary key,
	name		nvarchar(20),
	title		nvarchar(50),
	contents	nvarchar(500),
	writedate	varchar(20),
	readcnt		int,
	fileurl		varchar(50)
)

select * from album

delete from album where num =2