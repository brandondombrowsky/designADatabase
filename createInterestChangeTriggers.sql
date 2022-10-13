-- Creates triggers to populate the user_interest_changes with the changes made to the user_has_interest table
-- Logs INSERT, UPDATE, and DELETE commands

USE mydb;
DELIMITER //

-- Trigger to log INSERT command into user_interest_changes log table
DROP TRIGGER IF EXISTS insert_user_interest;
CREATE TRIGGER insert_user_interest
AFTER INSERT
ON user_has_interest
FOR EACH ROW
BEGIN
	INSERT INTO user_interest_changes(command,id_user,id_interest,date_Started,is_Current,date_Ended,is_Spectator,is_Participant)
	VALUES('insert',NEW.User_idUser,NEW.Interest_idInterest,NEW.DateStarted,NEW.isCurrent,NEW.DateEnded,NEW.isSpectator,NEW.isParticipant);
END//

-- Trigger to log UPDATE command into user_interest_changes log table
DROP TRIGGER IF EXISTS update_user_interest;
CREATE TRIGGER update_user_interest
AFTER UPDATE
ON user_has_interest
FOR EACH ROW
BEGIN
	INSERT INTO user_interest_changes(command,id_user,id_interest,date_Started,is_Current,date_Ended,is_Spectator,is_Participant)
	VALUES('update',NEW.User_idUser,NEW.Interest_idInterest,NEW.DateStarted,NEW.isCurrent,NEW.DateEnded,NEW.isSpectator,NEW.isParticipant);
END//

-- Trigger to log DELETE command into user_interest_changes log table
DROP TRIGGER IF EXISTS delete_user_interest;
CREATE TRIGGER delete_user_interest
AFTER DELETE
ON user_has_interest
FOR EACH ROW
BEGIN
	INSERT INTO user_interest_changes(command,id_user,id_interest,date_Started,is_Current,date_Ended,is_Spectator,is_Participant)
	VALUES('delete',OLD.User_idUser,OLD.Interest_idInterest,OLD.DateStarted,OLD.isCurrent,OLD.DateEnded,OLD.isSpectator,OLD.isParticipant);
END//

DELIMITER ;