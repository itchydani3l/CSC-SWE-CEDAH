USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
SELECT id, email, phone
FROM users
WHERE username='Daniel' AND password = 'pass123';
#SELECT * FROM users;
#This query will return all of the user's info as long as they specify the correct username and password combination.
#The front-end should hold onto this info, becuase it needs to be fed into other queries.
#This will not return the user's own password.