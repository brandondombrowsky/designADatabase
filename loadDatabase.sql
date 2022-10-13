USE mydb;

INSERT INTO Keyword
  VALUES
    (1, 'faith'),
    (2, 'touchdown'),
    (3, 'taxes'),
    (4, 'queer'),
    (5, 'vote'),
    (6, 'political');

INSERT INTO Interest
  VALUES
    (1, 'church'),
    (2, 'football'),
    (3, 'ballet'),
    (4, 'drag'),
    (5, 'knitting'),
    (6, 'democrat'),
    (7, 'republican'),
    (8, 'independent'),
    (9, 'catholic'),
    (10, 'protestant'),
    (11, 'agnostic'),
    (12, 'budhist'),
    (13, 'christian');
    

INSERT INTO Interest_has_Keyword
  VALUES
	(1, 3),
	(2, 2),
	(3, 4),
	(4, 5),
	(5, 1);

INSERT INTO SocialMedia
  VALUES
    (1, 'facebook'),
    (2, 'instagram'),
    (3, 'twitter'),
    (4, 'myspace'),
    (5, 'twitch');

INSERT INTO User
	VALUES
	(1, 'Tawny',	'Handy', 'married',		'1978-08-25', 68812),
	(2, 'Derek',	'Smith', 'in a relationship',	'1981-11-13', 23325),
	(3, 'Luca',	'Vojtech',	'single',		'2001-12-09', 52332),
	(4, 'Brianne',	'Jolley',     'in a relationship',	'1998-05-15', 64827),
	(5, 'T.D.',	'Klamm', 'other',		'1994-03-23', 98184);


    
INSERT INTO ContentType
  VALUES
    (1, 'this is some content'),
    (2, 'these would be things like posts'),
    (3, 'we want to see how users'),
    (4, 'interact with their content'),
    (5, 'this is described in the relationship');

INSERT INTO Post
	VALUES
	(1, 1, 1, 1, '2022-01-10', 'I love dogs!'),
	(2, 2, 2, 2, '2022-01-13', 'Everyone look at my new riffle.'),
	(3, 3, 3, 3, '2022-01-09', 'Lets go Seahawks!!!'),
	(4, 4, 4, 4, '2022-01-15', 'Scream 5 was AWESOME!'),
	(5, 5, 5, 5, '2022-01-17', 'Im learning React this quarter.');

INSERT INTO Post_has_Keyword
  VALUES
    (1, 3),
    (2, 5),
    (3, 2),
    (4, 1),
    (5, 4);
    
INSERT INTO User_has_keyword
	VALUES
	(1, 3,  7),
    (1, 1,  8),
    (1, 6,  2),
    (2, 5,  4),
    (2, 6,  1),
    (2, 1,  12),
    (3, 6,  20),
    (3, 2,  8),
    (3, 1,  2),
    (4, 1, 11),
    (4, 6, 12),
    (5, 4, 17),
    (5, 6, 14),
    (5, 1, 7);
    
INSERT INTO User_has_SocialMedia
	VALUES
	(1, 1, '2006-09-15', 1, NULL),
	(2, 2, '2009-04-25', 1, NULL),
	(3, 3, '2016-01-30', 1, NULL),
	(4, 4, '2007-09-01', 1, NULL),
	(5, 5, '2005-11-05', 1, NULL);

INSERT INTO User_has_Content
	VALUES
	(1, 1, 20012, 1, 1, 1, 0),
	(2, 2, 1302,  1, 1, 1, 0),
	(3, 3, 256,   0, 1, 1, 1),
	(4, 4, 17304, 1, 1, 1, 0),
	(5, 5, 36789, 1, 1, 1, 0);

INSERT INTO User_has_Interest
	VALUES
	(1, 1, '2021-01-24', 1, NULL, 1, 0),
	(1, 6, '2021-02-5', 1, NULL, 1, 0),
	(1, 9, '2021-01-10', 1, NULL, 1, 0),
	(2, 2, '2022-01-01', 1, NULL, 0, 1),
	(2, 7, '2022-02-05', 1, NULL, 0, 1),
	(2, 10, '2022-01-22', 1, NULL, 0, 1),
	(3, 3, '2021-12-25', 1, NULL, 1, 1),
	(3, 8, '2021-12-28', 1, NULL, 1, 1),
	(3, 11, '2022-1-2', 1, NULL, 1, 1),
	(4, 4, '2021-11-22', 1, NULL, 0, 0),
	(4, 7, '2021-12-15', 1, NULL, 0, 0),
	(4, 12, '2021-12-26', 1, NULL, 0, 0),
	(5, 5, '2022-01-15', 1, NULL, 1, 1),
	(5, 8, '2022-01-8', 1, NULL, 1, 1),
	(5, 13, '2022-2-17', 1, NULL, 1, 1);

INSERT INTO Education
	VALUES
	(1, 1, 'college',	'Western Washington University',	'1998-09-28',	'2002-06-20', 0),
	(2, 2, 'college',	'Harvard',				'2001-09-26',	'2005-06-17', 0),
	(3, 3, 'high school',	'Lakeside High School',			NULL,		NULL,         1),
	(4, 4, 'college',	'Spokane Falls Community College',	'2020-01-04',	NULL,         1),
	(5, 5, 'high school',	'Seattle University',			'2015-09-06',	'2019-06-22', 0);

INSERT INTO Email
	VALUES
	(1, 1, 'thandy@gmail.com'),
	(2, 2, 'dereksmith@yahoo.com'),
	(3, 3, 'hikingluca@rei.com'),
	(4, 4, 'brianneisjolley@hotmail.com'),
	(5, 5, 'tiffanydawn@tiffanydawn.com');
        
        
INSERT INTO gender
	VALUES
	(1, 'non-binary'),
	(2, 'gender fluid'),
	(3, 'male'),
	(4, 'female'),
	(5, 'trans masculine');

INSERT INTO User_has_gender
  VALUES
    (1, 3),
    (2, 5),
    (3, 2),
    (4, 1),
    (5, 4);
    
INSERT INTO Gender_has_keyword
  VALUES
    (1, 3),
    (2, 5),
    (3, 2),
    (4, 1),
    (5, 4);
    
INSERT INTO race
   VALUES
    (1, 'Pacific Islander/Hawaiian'),
    (2, 'Hispanic'),
    (3, 'Native American'),
    (4, 'Caucasian'),
    (5, 'Black');
        
INSERT INTO User_has_race
  VALUES
    (1, 3),
    (2, 5),
    (3, 2),
    (4, 1),
    (5, 4);