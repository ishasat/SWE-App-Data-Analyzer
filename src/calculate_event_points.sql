/*
Calculates how many members attend each event in sequential order.
To change the ordering to find the most-attendend event, for example, change "ORDER BY e.event_id ASC" to "ORDER BY count(a.e_id) DESC"
Author: Isha Satpalkar satpalkar.1@osu.edu
*/

SELECT e.Title, e.event_date, count(a.e_id)
FROM EVENTS e, ATTENDANCE a
WHERE e.event_id=a.e_id
GROUP BY e.event_id
ORDER BY e.event_id ASC;
