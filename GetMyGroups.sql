USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
SELECT G.group_id, U.username, G.group_name
FROM meetup_group AS G, group_membership AS M, users AS U
WHERE G.group_id = M.group_id AND M.user_id = 1 AND G.owner_id = U.id; #This '1' needs to be replaced with the retrieved user-id from login
#This returns the Group_ID, Group Name, and Owner's Username of all groups you are a member of
#This should be all the data that the homepage needs about your groups