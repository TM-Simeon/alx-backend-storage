-- a script that creates a trigger that decreases the quantity
-- of an item after adding a new order, quantity can be negative

CREATE TRIGGER mytrigger
BEFORE INSERT
ON
items
FOR EACH ROW
SET new.quantity = new.quantit - 2;