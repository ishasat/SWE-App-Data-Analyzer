# SWE_Member_Attendance_Project

Instructions for Loading Data 
1. Change directory to SWE_Member_Attendance_Project/src
2. Run > sqlite3
3.     > .read create_member_attendance.sql
4.     > .import ../csv/users.csv USERS
5.     > .import ../csv/events.csv EVENTS
6.     > .import ../csv/attendances.csv ATTENDANCE
7.     > .save swe_member_event_attendance.db
