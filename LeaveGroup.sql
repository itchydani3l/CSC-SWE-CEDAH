USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
DELETE
FROM group_membership AS G
WHERE G.user_id = 1 AND G.group_id =2; #'1' must be replaced by the current user_id (retrieved at login) and the '2' must be replaced by the group_id (retrieved when clicking on group)
#SELECT * FROM group_membership; #This is for debugging
#This will never return anything, regardless of success or failure to delete