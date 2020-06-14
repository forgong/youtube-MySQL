create table topic(
    id int(11) not null auto_increment,
    title varchar(30) not null,
    description text null,
    created datetime not null,
    author_id int(11) null,
    primary key(id)
);

create table author(
    id int(11) not null auto_increment,
    name varchar(20) not null,
    profile varchar(200) not null,
    primary key(id)
);


insert into author (id, name, profile) values (1, 'egoing', 'developer');
insert into author (id, name, profile) values (2, 'duru', 'data administrator');
insert into author (id, name, profile) values (3, 'taeho', 'data scientist, developer');


insert into topic(id, title, description, created, author_id) values (1, 'MySQL', 'MySQL is ...', '2018-1-1 12:10:11', 1);
insert into topic(id, title, description, created, author_id) values (2, 'Oracle', 'Oracle is ...', '2018-1-3 13:01:10', 1);
insert into topic(id, title, description, created, author_id) values (3, 'SQL Server', 'SQL Server is ...', '2018-1-30 11:01:10', 2);
insert into topic(id, title, description, created, author_id) values (4, 'PostgreSQL', 'PostgreSQL is ...', '2018-1-23 01:01:03', 3);
insert into topic(id, title, description, created, author_id) values (5, 'MongoDB', 'MongoDB is ...', '2018-1-30 12:31:03', 1);

select * from topic left join author on topic.author_id = author.id;
select topic.id, title, description, created, name, profile from topic left join author on topic.author_id = author.id;