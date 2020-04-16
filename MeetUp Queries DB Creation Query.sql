CREATE DATABASE CEDAH_MEETUP;
use CEDAH_MEETUP;

CREATE TABLE IF NOT EXISTS users (
	id int unsigned auto_increment NOT NULL PRIMARY KEY,
    username varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    name varchar(255),
    email varchar(255),
    phone varchar(255)
    ); 
    
CREATE TABLE IF NOT EXISTS meetup_group (
	group_id int unsigned NOT NULL auto_increment PRIMARY KEY,
    group_name varchar(255) NOT NULL,
    owner_id int unsigned NOT NULL,
    FOREIGN KEY (owner_id) references users(id)
    );

CREATE TABLE IF NOT EXISTS group_membership (
	group_id int unsigned NOT NULL,
    user_id int unsigned NOT NULL,
    FOREIGN KEY (user_id) references users(id),
    FOREIGN KEY (group_id) references meetup_group(group_id),
    PRIMARY KEY (group_id, user_id)
    );
CREATE TABLE IF NOT EXISTS meeting (
	id int unsigned auto_increment NOT NULL PRIMARY KEY,
    meeting_day varchar(255),
    meeting_start_time time,
    meeting_end_time time,
    #manager_user_id int #I'm replacing this with group_id, because the meeting belongs to a group
    group_id int unsigned NOT NULL,
    creator_id int unsigned NOT NULL, #user ID of the meeting creator
    foreign key (group_id) references meetup_group(group_id),
    foreign key (creator_id) references users(id)
    ); 
    
CREATE TABLE IF NOT EXISTS user_availability (
	id int unsigned auto_increment NOT NULL PRIMARY KEY,
	day varchar(255),
	start_time time,
	end_time time,
	user_id int unsigned NOT NULL,
    foreign key (user_id) references users(id)
); 

CREATE TABLE IF NOT EXISTS meeting_possibilities (
	id int unsigned auto_increment NOT NULL PRIMARY KEY,
    day varchar(255),
    start_time time,
    end_time time,
    vote_count int,
    group_id int unsigned NOT NULL,
    foreign key (group_id) references meetup_group(group_id)
    ); 
    
CREATE TABLE IF NOT EXISTS files (
	id int unsigned auto_increment NOT NULL PRIMARY KEY,
    description varchar(255),
    data longblob,
    file_name varchar(255),
    file_size varchar(255),
    file_type varchar(255),
    #group_id int #shouldn't files belong to a meeting?
    meeting_id int unsigned NOT NULL,
    foreign key (meeting_id) references meeting(id)
    ); 
SHOW TABLES;