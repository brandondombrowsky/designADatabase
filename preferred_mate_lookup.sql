-- Social Mate Preference Lookup Table

-- our database uses a somewhat traditional view of relationships status among users
-- this code produces a lookup table that orders users by last name, first name and lists 
-- relationship status

USE mydb;

CREATE TABLE preferred_mate_lookup AS
SELECT
	user.FirstName				AS 'First Name',
    user.LastName				AS 'Last Name',
    user.RelationshipStatus		AS 'Marital Status'
FROM
    user
ORDER BY
	user.LastName,
    user.FirstName;