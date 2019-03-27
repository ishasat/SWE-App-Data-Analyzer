/*
Calculates member attendance points and returns first name, last name, username and points in descending order
Author: Isha Satpalkar satpalkar.1@osu.edu
*/

CREATE TABLE MEMBER_POINTS
(user_id int not null,
firstName text not null,
lastName text not null,
username text not null,
total_points int not null,
primary key(user_id),
foreign key(user_id) references USERS(user_id)
);

INSERT INTO MEMBER_POINTS(user_id, firstName, lastName, username, total_points)
SELECT u.user_id, u.firstName, u.lastName, u.username, count(a.u_id)
FROM USERS u, EVENTS e, ATTENDANCE a
WHERE u.user_id=a.u_id AND e.event_id=e_id
GROUP BY u.user_id;

SELECT firstName, lastName, username, total_points
FROM MEMBER_POINTS
ORDER BY total_points DESC;
