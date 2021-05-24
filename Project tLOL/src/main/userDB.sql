create table users(
	userID varchar2(20) primary key,
	userPassword varchar2(20) not null, 
	userName varchar2(20) not null,
	userNickName varchar2(20) not null,
	reg_date date,
	del char(1) default 'n'
);

select * from users;