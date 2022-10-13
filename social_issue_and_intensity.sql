-- Social Issue Lookup Table

-- this code produces a lookup table referencing social issues and user's level of intensity
-- for the issue; data is orderedby users last name, first name and lists social issue and 
-- intensity;  intensity is defined as follows: 0-3 is low intensity, 4-6 is medium intensity, 
-- 7-10 is high intensity, and 11+ is extreme intensity

USE mydb;

CREATE TABLE social_issue_and_intensity_lookup AS
SELECT 
	user.FirstName					AS		'First Name',
    user.LastName					AS		'Last Name',
    keyword.Keyword					AS		'Social Issue',
    user_has_keyword.KeywordCount 	AS		'Intensity Level'
FROM
	user,
    keyword,
    user_has_keyword
WHERE 
	user_has_keyword.User_idUser = user.idUser
AND
	user_has_keyword.Keyword_idKeyword = keyword.idKeyword

    