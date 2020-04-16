USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
INSERT INTO users (username, password, name, email, phone) /*This is our insert statement*/
SELECT 'NewUserName', 'NewUserPassword', 'Name', 'Email@test.com', '111-2222' /*Instead of actually selecting columns, we are specifying our values here*/
FROM dual /*DUAL is a system-generated table, we are using it as a placeholder because FROM statement is required*/
WHERE NOT EXISTS (SELECT username FROM users WHERE username='NewUserName'); /*This is our condition, which checks against our DB*/
#SELECT * FROM users;