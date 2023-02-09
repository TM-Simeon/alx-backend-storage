-- sql script that creates a trigger to reset the attribute valid email
-- only when email has been reset
DELIMETER $$
CREATE TRIGGER changemail BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email <> OLD.email THEN
    SET NEW.valid_email = 0;
    END IF;
END;    
$$