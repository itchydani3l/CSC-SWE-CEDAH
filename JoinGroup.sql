USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
INSERT INTO group_membership (group_id, user_id) /*This is our insert statement*/
SELECT group_id,1 #user_id needs to be provided by front-end from the login query.
FROM meetup_group
WHERE group_name='UserDefinedName';
#SELECT * FROM group_membership; #This is for debugging, to view the table
#SELECT * FROM meetup_group; #Same
#This queries joins a group. Nothing will happen is UserDefinedName is not found in meetup_group table.
#Will throw an error if attemption to join same user to same group multiple times (?)