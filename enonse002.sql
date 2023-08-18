create database To_Do_List character set utf8mb4;
use To_Do_List;
create table Tasks(
task_id int auto_increment primary key,
task_name varchar(30),
description varchar(150),
due_date date ,
status varchar(30)
);
insert into Tasks (task_name,description,due_date,status) values
("Fè kafe","elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua","2023-8-18","completed"),
("aprann SQL"," quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequatu","2023-8-19","pending"),
("aprann java","enstale netbeans,epi travay chak jou","2023-8-18","pending"),
("achte yon machin","sunt in culpa qui officia deserunt mollit anim id est laborum","2023-8-20","pending" ),
("danse nan maryaj","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua","2023-8-26","pending"),
("aprann python"," Excepteur sint occaecat cupidatat non proident","2023-8-17","pending"),
("konkeri kè crush la","elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua","2023-8-25","pending"),
("aprann kwit diri","elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua","2023-8-18","completed");
select * from Tasks;
select * from Tasks where status="pending";
SELECT * FROM Tasks
WHERE due_date = date_add(CURRENT_DATE( ), INTERVAL 7 day);
select * from Tasks where status="completed";
UPDATE Tasks
SET status="completed"
WHERE task_id=3 and status="pending";
ALTER TABLE Tasks
ADD COLUMN priority INT ;
UPDATE Tasks
SET priority = 1
WHERE task_id=1;
UPDATE Tasks
SET priority = 2
WHERE priority IS NULL;
create table Categories(
    categorie_id int auto_increment primary key ,
    categorie_deskrip varchar(90)
);
alter table Tasks 
add column categorie_id int ;
alter table Tasks 
add constraint kle_etranjè foreign key(categorie_id) references Categories (categorie_id);
insert into Categories (categorie_deskrip) values
("programasyon"),
("programasyon"),
("fantezi"),
("fantezi"),
("fantezi"),
("fantezi"),
("programasyon"),
("dezi");
update Tasks 
set categorie_id=1
where task_id=1;
update Tasks 
set categorie_id=3
where task_id=3;
update Tasks 
set categorie_id=8
where task_id=8;
update Tasks 
set categorie_id=1
where categorie_id is null;
select * from Tasks where priority=1;
DELETE FROM Tasks
WHERE status = 'completed' OR due_date < CURRENT_DATE;






