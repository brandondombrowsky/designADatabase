-- This creates the table that logs the changes to the user_has_interest table
-- uses the current timestamp to log when the change happened
-- contains field 'command' to log if the transaction was INSERT, UPDATE, DELETE


USE mydb;

CREATE TABLE mydb.user_interest_changes (
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    command VARCHAR(20),
    id_user INT,
    id_interest INT,
    date_Started DATE,
    is_Current TINYINT,
    date_Ended DATE,
    is_Spectator TINYINT,
    is_Participant TINYINT
);