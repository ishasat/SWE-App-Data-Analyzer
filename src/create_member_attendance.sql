/*
Creates SWE member schema containing USERS, EVENTS and ATTENDANCE tables.
Author: Isha Satpalkar satpalkar.1@osu.edu
*/
CREATE TABLE USERS
(user_id int not null,
username text not null,
officer int not null,
major text,
firstName text not null,
lastName text not null,
graduationYear int not null,
primary key(user_id)
);

CREATE TABLE EVENTS
(event_id int not null,
title text not null,
event_date date not null,
location text not null,
description text not null,
time_range text not null,
primary key(event_id)
);

CREATE TABLE ATTENDANCE
(attendance_id int not null,
u_id int not null,
e_id int not null,
primary key(attendance_id),
foreign key(u_id) references USERS(user_id),
foreign key(e_id) references EVENTS(event_id)
);
