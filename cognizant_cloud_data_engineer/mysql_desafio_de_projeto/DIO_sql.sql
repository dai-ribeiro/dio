create database movies_control;

use movies_control;

create table movies(
	id_movie int primary key auto_increment,
    type int not null,
    name varchar(30) not null,
    total_ep int, 
    atual_ep int,
    last_view datetime default current_timestamp
);

insert into movies values(1, 0, 'Friends', 10, 1, current_timestamp());
insert into movies values(2, 1, 'Avengers', null, null, current_timestamp());
insert into movies values(3, 0, 'Todo mundo odeia o Chris', 20, 1, '2021-02-23');
insert into movies values(4, 1, '1917', null, null, current_timestamp());
insert into movies values(5, 1, '300', null, null, current_timestamp());

insert into movies (type, name, total_ep, atual_ep, last_view) values (1, '1917', null, null, current_timestamp());

update movies set last_view='2021-02-26' where id_movie=1;

select * from movies;

delete from movies where id_movie=4;


