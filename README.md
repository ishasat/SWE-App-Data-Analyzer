# SWE_Member_Attendance_Project

## Background ##

<p align="center">
  <img width="400" height="550" src="img/swe-app.png">
</p>
![Alt text](img/swe-app.png?raw=true "OSU SWE App")

This customized mobile application tracks member involvement, sends out notifications generated from a consolidated event calendar and creates a centralized location for tools and resources specific to the organization. Members sign into the app to record their attendance for each event. Individual and group attendance is stored and tracked, improving the speed and simplicity of event check-in logistics. All event details can be found by clicking on events that are filtered within the calendar. Events will automatically send push notifications to each user’s phone 24 hours prior, reminding them to attend. A centralized database for SWE contacts and links allows members to easily find the information they need to stay connected. This application is currently available for Android and IOS.
Instructions for Loading Data 
1. Change directory to SWE_Member_Attendance_Project/src
2. Run > sqlite3
3.     > .read create_member_attendance.sql
4.     > .mode csv
5.     > .import ../csv/users.csv USERS
6.     > .import ../csv/events.csv EVENTS
7.     > .import ../csv/attendances.csv ATTENDANCE
8.     > .save swe_member_event_attendance.db
