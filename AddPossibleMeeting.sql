USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
/*The user_availability table holds INDIVIDUAL time slots, so each user will have multiple rows depending on their schedule*/
INSERT INTO meeting_possibilities (day, start_time, end_time, vote_count, group_id) /*This is our insert statement*/
SELECT 'MM/DD/YYYY', '01:02:03', '01:02:03', 0, 1 /*Instead of actually selecting columns, we are specifying our values here*/
#These values should be replaced with front-end variables.
#IMPORTANT: Vote count should be initialized as 0. I am including a seperate "Cast Vote" query which will update the vote counts.
#Time format is hh:mm:ss
FROM dual; /*DUAL is a system-generated table, we are using it as a placeholder because FROM statement is required*/
#SELECT * FROM meeting_possibilities;