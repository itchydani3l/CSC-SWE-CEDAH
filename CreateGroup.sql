USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
INSERT INTO meetup_group (group_name, owner_id) /*This is our insert statement*/
SELECT 'NewGroupName', 1 /*Instead of actually selecting columns, we are specifying our values here*/
FROM dual /*DUAL is a system-generated table, we are using it as a placeholder because FROM statement is required*/
WHERE NOT EXISTS (SELECT group_name FROM meetup_group WHERE group_name='NewGroupName'); /*This is our condition, which checks against our DB*/
#SELECT * FROM meetup_group;
#This query adds a group if the desired group name is not taken. We NEED to replace the owner_id with the ID of the logged in user
#When you create a group, the front-end should also call the JoinGroup query to join the current user to the group. (this is not done in sql)