INSERT INTO customers (name, phone) VALUES ('Rachel', 1111111111); -- #1


INSERT INTO coffee_orders (user_id) VALUES (1); --#2


UPDATE customers
SET points = points + 1   
WHERE id = 1; -- #2 (update)

INSERT INTO customers (name, phone, email) VALUES ('Monica', 2222222222, 'monica@friends.show');
INSERT INTO customers (name, phone, email) VALUES ('Phoebe', 3333333333, 'phoebe@friends.show'); --#3

UPDATE customers
SET points = points + 3   
WHERE id = 3; -- #4 (update)


UPDATE customers
SET points = points + 4   
WHERE id = 1; -- #4 (update)

UPDATE customers
SET points = points + 4  
WHERE id = 2; -- #4 (update)

SELECT points FROM customers WHERE id = 2; --#5

SELECT points FROM customers WHERE id = 1; --#6

INSERT INTO coffee_orders (is_redeemed, user_id) VALUES ('TRUE', 1); --#7

UPDATE customers 
SET points = 0
WHERE id = 1; --7.1 Updates Rachel's point total after usage 


INSERT INTO customers (name, email) 
VALUES
    ('Joey', 'joey@friends.show'),
    ('Chandler', 'chandler@friends.show'),
    ('Ross', 'ross@friends.show'); --#8


INSERT INTO coffee_orders (user_id) 
VALUES
    (6),
    (6),
    (6),
    (6),
    (6),
    (6); --#9

UPDATE customers
SET points = points + 6
WHERE id = 6; --#9.1 Update Ross's point total after the 6 purchases


INSERT INTO coffee_orders (user_id) 
VALUES
    (2),
    (2),
    (2);
         --#10

UPDATE customers
SET points = points + 3
WHERE id = 2; --#10.1 Update Monica's point total after the 3 purchases


SELECT points FROM customers WHERE id = 3; --#11

INSERT INTO coffee_orders (user_id) 
VALUES
    (3);
         --#11.1 

UPDATE customers
SET points = points + 1
WHERE id = 3; --#11.2


DELETE FROM coffee_orders
WHERE id = 7 OR id = 8; --#12

UPDATE customers
SET points = points - 2
WHERE id = 6; --#12.1


INSERT INTO coffee_orders (user_id) 
VALUES
    (4),
    (4);
         --#13




