-- Gender Lookup Table

-- our database has already established a many-to-many relationship between a user and a gender
-- this produces a lookup table that orders users by last name, first name and lists their gender(s)

USE mydb;
CREATE TABLE gender_lookup AS
SELECT
	user.FirstName	AS 'First Name',
    user.LastName	AS 'Last Name',
    gender.Name		AS 'Gender'
FROM
    gender,
    user_has_gender,
    user
WHERE
	user_has_gender.User_idUser = user.idUser
AND
	user_has_gender.Gender_idGender = gender.idGender
ORDER BY
	user.LastName,
    user.FirstName;