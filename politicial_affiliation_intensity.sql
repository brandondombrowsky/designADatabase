-- Political Affiliation and Intensity Lookup table

-- this code produces a lookup table that orders users by last name, first name and lists 
-- political affiliation and intenisty level; intensity is defined as follows: 0-3 is low
-- intensity, 4-6 is medium intensity, 7-10 is high intensity, and 11+ is extreme intensity

USE mydb;
CREATE TABLE political_affiliation_and_intensity_lookup AS
SELECT 
	user.FirstName		AS		'First Name',
    user.LastName		AS		'Last Name',
    interest.title		AS		'Political Affiliation',
	user_has_keyword.KeywordCount 	AS	'Intensity Level'
FROM
	user,
    user_has_interest,
    interest,
    user_has_keyword
WHERE 
	user_has_interest.User_idUser = user.idUser
AND
    user_has_interest.Interest_idInterest IN (6,7,8)
AND
	user_has_interest.Interest_idInterest = interest.idInterest
AND
	user_has_keyword.User_idUser = user.idUser
AND 
	user_has_keyword.Keyword_idKeyword = 6;