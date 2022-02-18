-- Comments in SQL Start with dash-dash --
--insert chair--
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);
--insert stool--
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);
--insert table--
INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false);
--display all rows/columns--
SELECT * FROM products;
--show name of all products--
SELECT name FROM products;
--show name and price--
SELECT name, price FROM products;
--insert new product--
INSERT INTO products (name, price, can_be_returned) VALUES ('couch', 100.00, false);
--products that can be returned--
SELECT name FROM products WHERE can_be_returned = 't'
--products with price less than 44 dollars--
SELECT name FROM products WHERE price < 44;
--products priced between 22.50 and 99.99--
SELECT name FROM products WHERE price > 22.50 AND price < 99.99
--products 20 dollars off--
UPDATE products SET price = price - 20;
--delete products less than 25 dollars--
DELETE FROM products WHERE price < 25;
--add 20 to price--
UPDATE products SET price = price + 20;
--all products can be returned now--
UPDATE products SET can_be_returned = 't';
