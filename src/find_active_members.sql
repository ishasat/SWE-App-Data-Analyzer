/*
Finds all active members in SWE and returns their first name, last name, major, OSU email address, and engineering organization.
Active member is defined as a member who has attended at least 1 SWE event.
Note: E-Council requested this EXACT information in spreadsheet form in Fall 2018.
Author: Isha Satpalkar satpalkar.1@osu.edu
*/

SELECT m.firstName, m.lastName, u.major, m.username||'@osu.edu', 'SWE'
FROM MEMBER_POINTS m, USERS u
WHERE m.user_id=u.user_id AND m.total_points>=1;
