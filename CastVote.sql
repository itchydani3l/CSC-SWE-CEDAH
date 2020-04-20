USE CEDAH_MEETUP;
/*Strings must be replaced with front-end variables*/
/*The user_availability table holds INDIVIDUAL time slots, so each user will have multiple rows depending on their schedule*/
UPDATE meeting_possibilities
SET vote_count= 1+vote_count
WHERE id = 1; #Replace this 1 with the meeting ID of the voted-on meeting. (This is retrieved in the GetGroupMeetings Query)
#SELECT * FROM meeting_possibilities;