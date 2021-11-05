use DB_A

create table customer
(
	custom_no	int identity(1,1)	primary key,
	name		nvarchar(20),
	social_no	varchar(20),
	tel			varchar(20)
)

select * from customer

insert into customer values(N'강원래', '991010-1234567', '01012345678')

create table test
(
	id	varchar(10),
	name varchar(20),
	tel	varchar(20)
	primary key(id)
)

select * from test     -- drop table test

alter table test add addr varchar(20)  -- not null default '~~~~'
alter table test alter column addr varchar(20)
alter table test drop column addr

create table Product
(
	prod_name	nvarchar(30) primary key,
	prod_color	nvarchar(30),
	prod_size	varchar(20)
)

select * from Product