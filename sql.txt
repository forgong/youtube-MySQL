CREATE DATABASE opentutorials;
show databases;
use opentutorials;

create table topic(
    id int(11) not null auto_increment,
    title varchar(100) not null,
    description text null,
    created datetime not null,
    author varchar(30) null,
    profile varchar(100) null,
    primary key(id)
);

desc topic;

insert into topic (title, description, created, author, profile) values('MySQL', 'MySQL is ...', now(), 'egoing', 'developer');

select * from topic;

select id, title, created, author from topic;
select id, title, created, author from topic where author = 'egoing';
select id, title, created, author from topic where author = 'egoing' order by id desc;
select id, title, created, author from topic where author = 'egoing' order by id desc limit 2;

update topic set description='Oracle is ...', title='ORACLE' where id=2;
update topic set description='PostgreSQL', title='PostgreSQL' where id = 4;

delete from topic where id = 5;

insert into topic (title, description, created, author, profile) values('MongoDB', 'MongoDB is ...', now(), 'egoing', 'developer');

rename table topic to topic_backup;