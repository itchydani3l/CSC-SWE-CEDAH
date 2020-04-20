USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
SELECT *
FROM meeting AS M
WHERE M.group_id = 1; #Replace this 1 with the group currently being viewed by the user.
SELECT *
FROM meeting_possibilities AS P
WHERE P.group_id = 1; #Same as above
#This returns all the meetings and meeting possibilities
#This information should also be shown when you view your group (along with the members)