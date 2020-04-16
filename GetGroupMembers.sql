USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
SELECT U.username, U.email, U.phone
FROM group_membership AS M, users AS U
WHERE M.user_id = U.id AND M.group_id = 1; #This '1' should be replaced with the retrieved group-id from the GetMyGroups query.
#This returns all the members of a given group.
#This information will be shown when you click on your group's button