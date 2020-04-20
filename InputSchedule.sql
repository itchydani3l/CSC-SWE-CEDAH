USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
/*The user_availability table holds INDIVIDUAL time slots, so each user will have multiple rows depending on their schedule*/
INSERT INTO user_availability (day, start_time, end_time, user_id) /*This is our insert statement*/
SELECT 'MM/DD/YYYY', '01:02:03', '01:02:03', 1 /*Instead of actually selecting columns, we are specifying our values here*/
#These values should be replaced with front-end variables. User_id is whoever is inputing their schedule
#This input query will need to be called multiple times depending on how many available time slots the user has.
#Time format is hh:mm:ss
#Ideally we would add a check to make sure a user doesn't have overlapping availabilities
FROM dual; /*DUAL is a system-generated table, we are using it as a placeholder because FROM statement is required*/
#SELECT * FROM user_availability;