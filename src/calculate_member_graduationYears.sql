/*
Calculates the number of SWE members in each graduation year.
Author: Isha Satpalkar satpalkar.1@osu.edu
*/

SELECT DISTINCT u.graduationYear, count(u.graduationYear)
FROM USERS u
GROUP BY u.graduationYear
ORDER BY u.graduationYear DESC;
