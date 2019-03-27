/*
Calculates how many SWE members (all that exist in database) are in each major.
Possible majors include: Aeronautical and Astronautical Engineering, Architecture, Aviation, Biomedical Engineering, Chemical Engineering, Civil Engineering, Computer Science and Engineering, Electrical and Computer Engineering, Engineering Physics, Environmental Engineering, Faculty/staff, Food, Agricultural and Biological Engineering, Industrial and Systems Engineering, Materials Science and Engineering, Mechanical Engineering, Non-Engineering, Undecided Engineering, Welding Engineering. 

Author: Isha Satpalkar satpalkar.1@osu.edu
*/
SELECT DISTINCT u.major, count(u.major)
FROM USERS u
GROUP BY u.major
ORDER BY count(u.major) DESC
