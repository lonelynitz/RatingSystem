create database feedback;

use feedback;

create table studlogin(
id int primary key auto_increment,
studentID int ,
password varchar(20)
)

select * from studlogin;

insert into studlogin values (1,20106062,'qwertyuiop123@');