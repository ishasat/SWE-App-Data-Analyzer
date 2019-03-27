/*
Calculates member attendance points and returns first name, last name, username and points in descending order
Author: Isha Satpalkar satpalkar.1@osu.edu
 */

SELECT u.firstName, u.lastName, u.username, count(a.u_id)
FROM USERS u, EVENTS e, ATTENDANCE a
WHERE u.user_id=a.u_id AND e.event_id=e_id
GROUP BY u.user_id
ORDER BY count(a.u_id) DESC;
