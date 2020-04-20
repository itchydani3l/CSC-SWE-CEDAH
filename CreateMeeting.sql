USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
INSERT INTO meeting (meeting_day, meeting_start_time, meeting_end_time, group_id, creator_id) /*This is our insert statement*/
SELECT 'MM/DD/YYYY', '00:11:22', '00:11:33', 1, 1 /*Instead of actually selecting columns, we are specifying our values here*/
#These values should be replaced with front-end variables. Group_ID and Creator_ID should be retrieved before setting up meeting.
#Day, Start Time, and End Time should be user-defined or taken from Ethan's algorithm
#Time format is hh:mm:ss
FROM dual; /*DUAL is a system-generated table, we are using it as a placeholder because FROM statement is required*/
#SELECT * FROM meeting;