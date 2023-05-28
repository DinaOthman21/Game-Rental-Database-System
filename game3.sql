use project ;
go 

create table project_schema.client(

u_id int primary key,
email varchar(250),
f_name varchar(50),
l_name varchar(50),
city varchar(40),
street varchar(50),
phone varchar(20) not null,
age int ,
SSN varchar(20) not null ,
c_id int , 

);
create table project_schema.category (

c_id int primary key,
year int not null,
game_id int  , 
v_id int, 

);
create table project_schema.game (
game_id int primary key,
price float(23) not null,
Date varchar(16) not null,
languge varchar(50),
name varchar(60) not null,
description varchar(255) not null,
re_id int,
re_data varchar(50),
up_id varchar(20), 
up_data varchar(20),
add_id int ,

);


create table project_schema.vendor (

v_id int primary key,
name varchar(50) not null,
de_id int ,
de_date varchar(20),

);
create table project_schema.admin (
admin_id int primary key,
email varchar(250),
f_name varchar(50),
l_name varchar(50),
city varchar(40),
street varchar(50),
phone varchar(20) not null,
age int ,
salary float(23) not null,
work_id int ,
qualification varchar(255),

);

create table project_schema.store(
st_id int primary key,
name varchar(50) not null ,
city varchar(50),
street varchar(50),

);
create table project_schema.renting(
 date varchar(20) not null,
 time varchar(20),
 price float(50)not null ,
 game_id int ,
 u_id int ,

 
);

create table project_schema.browsing (
game_id int ,
u_id int,
);
create table project_schema.form (
f_id int primary key,
type varchar(50) not null,
si_id int ,
up_id int,
su_time varchar(20),
up_time varchar(20),

)






  alter table project_schema.browsing
add constraint fk_gamebr foreign key (game_id) references project_schema.game  (game_id);
alter table project_schema.browsing
 add constraint fk_userbr foreign key (u_id) references   project_schema.client(u_id);





insert into project_schema.client (u_id,email,f_name,l_name,city,street,phone,age,SSN,c_id)values(20200140,'p.gmail','habiba','ayman','cairo','agoza','011494876',20,'7890',421);
insert into project_schema.client (u_id,email,f_name,l_name,city,street,phone,age,SSN,c_id)values(20200173,'d.gmail','dina','othman','cairo','elhoria','0112367890',20,'1567',422);
insert into project_schema.client (u_id,email,f_name,l_name,city,street,phone,age,SSN,c_id)values(20201020,'a.gmail','asala','ehab','cairo','elnasr','01123456789',20,'1234',423);
insert into project_schema.client (u_id,email,f_name,l_name,city,street,phone,age,SSN,c_id)values(20201014,'e.gmail','esraa','osama','cairo','elomra','01123010705',20,'123',424);






alter table project_schema.game
add constraint fk_renting foreign key (re_id) references project_schema.client (u_id);
alter table project_schema.game
add constraint fk_update foreign key (game_id) references project_schema.admin (admin_id);
alter table project_schema.game
add constraint fk_add foreign key (game_id) references project_schema.admin (admin_id);
alter table project_schema.game
drop  constraint fk_update
alter table project_schema.game
drop  constraint fk_add
insert into  project_schema.game(game_id,price,Date,languge,name,description,re_data,up_data)values(5050,200.5,'20/2','arabic','panda','The game is black and white and speaks arabic','April','1/1/2022')
insert into  project_schema.game(game_id,price,Date,languge,name,description,re_data,up_data)values(5051,100.99,'25/7','english','clown','The game is red in color and speaks many languages and and make the kids laugh','April','3/3/2022')
insert into  project_schema.game(game_id,price,Date,languge,name,description,re_data,up_data)values(5055,300.99,'16/5','french','parapi','The game combs her hair, cooks, sings, and arranges her clothes','May','3/8/2022')
insert into  project_schema.game(game_id,price,Date,languge,name,description,re_data,up_data)values(5065,500.75,'17/10','turkey','ball','The game in black and white color and large size and made of strong plastic','May','2/2/2022')
insert into  project_schema.game(game_id,price,Date,languge,name,description,re_data,up_data)values(5085,400.88,'5/6','china','Train','The game is fast, makes a sound, and moves in circles on its own rail','May','11/11/2022')

insert into project_schema.category(c_id,year,game_id,v_id)values(421,2022,5050,4021)
insert into project_schema.category(c_id,year,game_id,v_id)values(422,2022,5051,4022)
insert into project_schema.category(c_id,year,game_id,v_id)values(423,2022,5055,4023)
insert into project_schema.category(c_id,year,game_id,v_id)values(424,2022,5065,4024)
insert into project_schema.category(c_id,year,game_id,v_id)values(425,2022,5085,4025)



alter table project_schema.vendor
add constraint fk_dev foreign key (de_id) references project_schema.game (game_id);
insert into  project_schema.vendor(v_id,name,de_id,de_date) values(4026,'panda_company',5050,'2021')
insert into  project_schema.vendor(v_id,name,de_id,de_date) values(4027,'clown_company',5051,'2021')
insert into  project_schema.vendor(v_id,name,de_id,de_date) values(4028,'parapi_company',5055,'2021')
insert into  project_schema.vendor(v_id,name,de_id,de_date) values(4029,'ball_company',5065,'2020')
insert into  project_schema.vendor(v_id,name,de_id,de_date) values(4030,'tranin_company',5085,'2021')

alter table project_schema.admin
add constraint fk_work foreign key (work_id) references project_schema.store (st_id);
insert into  project_schema.admin(admin_id,email,f_name,l_name,city,street,phone,age,salary,qualification)values(9031,'o@gmail.com','omar','mohmmed','cairo','malekelsleh street','01125462485',30,2000,'Graduated from the Faculty of Commerce, class of 1999')
insert into  project_schema.admin(admin_id,email,f_name,l_name,city,street,phone,age,salary,qualification)values(9032,'b@gmail.com','bassel','ahmmed','cairo',' medan eldokki street','011254629',35,2500,'Diploma in Commerce and Masters in Games Management')
insert into  project_schema.admin(admin_id,email,f_name,l_name,city,street,phone,age,salary,qualification)values(9033,'a@gmail.com','ahmed','mohmmed','cairo',' medan eltahrir street','011252629',36,2900,'Graduated from cairo university Faculty of Commerce')
insert into  project_schema.admin(admin_id,email,f_name,l_name,city,street,phone,age,salary,qualification)values(9034,'y@gmail.com','yossef','ahmmed','cairo','  elmaddi street','0113644629',39,3000,'Diploma in Commerce and Masters in Games Management')
insert into  project_schema.admin(admin_id,email,f_name,l_name,city,street,phone,age,salary,qualification)values(9035,'m@gmail.com','mahmoud','omar','cairo',' elmohndisen street','0112654629',30,2500,'Graduated from Cairo University Commerce Department')

insert into  project_schema.store(st_id,name,city,street)values(3021,'Gameigo','cairo','maadi')


alter table project_schema.renting
add constraint fk_gamere foreign key (game_id) references project_schema.game  (game_id);

alter table project_schema.renting
 add constraint fk_userre foreign key (u_id) references   project_schema.client(u_id);
 insert into  project_schema.renting(date, time,price,game_id ,u_id)values('April','3:00pm','100.5',5050,20201020)
 insert into  project_schema.renting(date, time,price,game_id ,u_id)values('April','3:45pm','100.5',5050,20201014)
 insert into  project_schema.renting(date, time,price,game_id ,u_id)values('April','3:20pm','100.5',5050,20200140)
 insert into  project_schema.renting(date, time,price,game_id ,u_id)values('April','1:00pm','100.5',5050,20200173)
 insert into  project_schema.renting(date, time,price,game_id ,u_id)values('April','3:30pm','150.5',5051,20201014)
 insert into  project_schema.renting(date, time,price,game_id ,u_id)values('April','3:5pm','75.5',5055,20201014)
 insert into  project_schema.renting(date, time,price,game_id ,u_id)values('April','2:00pm','50.5',5085,20201014)
 insert into  project_schema.renting(date, time,price,game_id ,u_id)values('April','5:00pm','50.5',5085,20200140)
 insert into  project_schema.renting(date, time,price,game_id ,u_id)values('April','6:20pm','150.5',5051,20200173)


  alter table project_schema.form
add constraint fk_si_c foreign key(si_id) references project_schema.client (u_id);
alter table project_schema.form
add constraint fk_si_ad foreign key (si_id) references project_schema.admin (admin_id);
alter table project_schema.form
add constraint fk_up_c foreign key(up_id) references project_schema.client (u_id);
alter table project_schema.form
add constraint fk_up_ad foreign key (up_id) references project_schema.admin (admin_id);
insert into  project_schema.form(f_id,type,su_time,up_time)values(7021,'client','10:00am','1:00pm')
insert into  project_schema.form(f_id,type,su_time,up_time)values(7022,'admin','11:00am','1:20pm')
insert into  project_schema.form(f_id,type,su_time,up_time)values(7023,'client','10:30am','1:25pm')
insert into  project_schema.form(f_id,type,su_time,up_time)values(7024,'admin','10:20am','1:15pm')
insert into  project_schema.form(f_id,type,su_time,up_time)values(7025,'client','10:10am','1:30pm')
/*a*/
use project
go
SELECT   top 1 with ties [project_schema].game.game_id
from [project_schema].renting , [project_schema].game
WHERE [project_schema].renting.game_id=[project_schema].game.game_id
GROUP by [project_schema].game.game_id
ORDER BY  [project_schema].game.game_id ASC
/*b*/
use project
go
select *
from [project_schema].game
where Not EXISTS(SELECT *
FROM [project_schema].renting 
WHERE  [project_schema].game.game_id=[project_schema].renting.game_id)
/*c*/
use project
go

SELECT   top 1 with ties [project_schema].client.u_id
from [project_schema].renting , [project_schema].client
WHERE [project_schema].renting.u_id=[project_schema].client.u_id
GROUP by [project_schema].client.u_id
ORDER BY  count(*) DESC

/*d*/
use project;
go
SELECT [project_schema].vendor.name
FROM [project_schema].vendor
WHERE [project_schema].vendor.de_id IN
(SELECT top 1 with ties [project_schema].game.game_id
FROM [project_schema].renting , [project_schema].game
WHERE [project_schema].renting.game_id=[project_schema].game.game_id 
group by  [project_schema].game.game_id
ORDER BY  count(*) DESC
)

/*e*/
use project
go
SELECT [project_schema].vendor.name
FROM [project_schema].vendor
WHERE [project_schema].vendor.de_id NOT IN
(SELECT [project_schema].renting.game_id
FROM [project_schema].renting , [project_schema].game
WHERE [project_schema].renting.game_id=[project_schema].game.game_id 
)
/*f*/

select * 
from project_schema.vendor
where de_date<>'2021'





