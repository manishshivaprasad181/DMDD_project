-- Insert records into users table
INSERT INTO users (First_name, Last_name, Email, password, phone_number, user_type, House_no, street_address, city, state, zipcode)
VALUES ('John', 'Doe', 'john.doe@example.com', 'password123', '1234567890', 'Customer', '123', 'Main St', 'Cityville', 'CA', '12345');

INSERT INTO users (First_name, Last_name, Email, password, phone_number, user_type, House_no, street_address, city, state, zipcode)
VALUES ('Alice', 'Smith', 'alice.smith@example.com', 'password456', '9876543210', 'Customer', '456', 'Oak St', 'Townsville', 'NY', '54321');

INSERT INTO users (First_name, Last_name, Email, password, phone_number, user_type, House_no, street_address, city, state, zipcode)
VALUES ('Bob', 'Johnson', 'bob.johnson@example.com', 'password789', '5556667777', 'Seller', '789', 'Pine St', 'Villageton', 'TX', '67890');

INSERT INTO users (First_name, Last_name, Email, password, phone_number, user_type, House_no, street_address, city, state, zipcode)
VALUES ('Eva', 'Brown', 'eva.brown@example.com', 'passwordabc', '1112223333', 'Customer', '101', 'Cedar St', 'Hamletville', 'FL', '11223');

INSERT INTO users (First_name, Last_name, Email, password, phone_number, user_type, House_no, street_address, city, state, zipcode)
VALUES ('Chris', 'Williams', 'chris.williams@example.com', 'passwordxyz', '9998887777', 'Seller', '202', 'Maple St', 'Cityburg', 'IL', '33445');


-- Insert records into brand table
-- Insert records into brand table
INSERT INTO brand (brand_name) VALUES ('BrandA');
INSERT INTO brand (brand_name) VALUES ('BrandB');
INSERT INTO brand (brand_name) VALUES ('BrandC');
INSERT INTO brand (brand_name) VALUES ('BrandD');
INSERT INTO brand (brand_name) VALUES ('BrandE');

-- Insert records into category table
INSERT INTO category (category_name, parent_category) VALUES ('Electronics', NULL);
INSERT INTO category (category_name, parent_category) VALUES ('Clothing', NULL);
INSERT INTO category (category_name, parent_category) VALUES ('Footwear', NULL);
INSERT INTO category (category_name, parent_category) VALUES ('Laptops', 1);
INSERT INTO category (category_name, parent_category) VALUES ('Smartphones', 1);

-- Insert records into product table
INSERT INTO product (product_name, description, price, quantity, category_ID, brand_id, seller_id) VALUES
  ('Laptop Model X', 'High-performance laptop', 1200, 10, 4, 1, 3);
INSERT INTO product (product_name, description, price, quantity, category_ID, brand_id, seller_id) VALUES
  ('Smartphone Model Y', 'Flagship smartphone', 800, 20, 5, 2, 5);
INSERT INTO product (product_name, description, price, quantity, category_ID, brand_id, seller_id) VALUES
  ('T-shirt Red', 'Cotton T-shirt', 20, 50, 2, 1, 4);
INSERT INTO product (product_name, description, price, quantity, category_ID, brand_id, seller_id) VALUES
  ('Running Shoes', 'Lightweight running shoes', 80, 30, 3, 3, 5);
INSERT INTO product (product_name, description, price, quantity, category_ID, brand_id, seller_id) VALUES
  ('Smartwatch', 'Fitness tracker smartwatch', 150, 15, 4, 2, 4);




-- Insert records into shipper table
INSERT INTO shipper (carrier) VALUES ('UPS');
INSERT INTO shipper (carrier) VALUES ('FedEx');
INSERT INTO shipper (carrier) VALUES ('DHL');
INSERT INTO shipper (carrier) VALUES ('USPS');
INSERT INTO shipper (carrier) VALUES ('Amazon Logistics');

-- Insert records into ratings table
INSERT INTO ratings (product_id, user_id, rating) VALUES (1, 1, 4);
INSERT INTO ratings (product_id, user_id, rating) VALUES (2, 2, 5);
INSERT INTO ratings (product_id, user_id, rating) VALUES (3, 3, 3);
INSERT INTO ratings (product_id, user_id, rating) VALUES (4, 4, 4);
INSERT INTO ratings (product_id, user_id, rating) VALUES (5, 5, 4);

-- Insert records into orders table
INSERT INTO orders (user_id, order_date, order_status, order_price, payment_ID, payment_method, house_no, street, city, state, shipper_id) VALUES
  (1, TO_DATE('2023-11-22', 'YYYY-MM-DD'), 'Shipped', 1200, 1, 'Credit Card', 123, 'Main St', 'Cityville', 'CA', 1);
INSERT INTO orders (user_id, order_date, order_status, order_price, payment_ID, payment_method, house_no, street, city, state, shipper_id) VALUES
  (2, TO_DATE('2023-11-22', 'YYYY-MM-DD'), 'Processing', 800, 2, 'PayPal', 456, 'Oak St', 'Townsville', 'NY', 2);
INSERT INTO orders (user_id, order_date, order_status, order_price, payment_ID, payment_method, house_no, street, city, state, shipper_id) VALUES
  (3, TO_DATE('2023-11-22', 'YYYY-MM-DD'), 'Delivered', 20, 3, 'Cash On Delivery', 789, 'Pine St', 'Villageton', 'TX', 3);
INSERT INTO orders (user_id, order_date, order_status, order_price, payment_ID, payment_method, house_no, street, city, state, shipper_id) VALUES
  (4, TO_DATE('2023-11-22', 'YYYY-MM-DD'), 'Cancelled', 80, 4, 'Credit Card', 101, 'Cedar St', 'Hamletville', 'FL', 4);
INSERT INTO orders (user_id, order_date, order_status, order_price, payment_ID, payment_method, house_no, street, city, state, shipper_id) VALUES
  (5, TO_DATE('2023-11-22', 'YYYY-MM-DD'), 'Shipped', 150, 5, 'PayPal', 202, 'Maple St', 'Cityburg', 'IL', 5);

-- Insert records into order_item table
INSERT INTO order_item (order_id, product_id, quantity, subtotal, return_status, return_reason, return_quantity, refund_amount) VALUES
  (1, 1, 1, 1200, 'No', NULL, NULL, NULL);
INSERT INTO order_item (order_id, product_id, quantity, subtotal, return_status, return_reason, return_quantity, refund_amount) VALUES
  (2, 2, 2, 1600, 'No', NULL, NULL, NULL);
INSERT INTO order_item (order_id, product_id, quantity, subtotal, return_status, return_reason, return_quantity, refund_amount) VALUES
  (3, 3, 3, 60, 'No', NULL, NULL, NULL);
INSERT INTO order_item (order_id, product_id, quantity, subtotal, return_status, return_reason, return_quantity, refund_amount) VALUES
  (4, 4, 4, 320, 'No', NULL, NULL, NULL);
INSERT INTO order_item (order_id, product_id, quantity, subtotal, return_status, return_reason, return_quantity, refund_amount) VALUES
  (5, 5, 5, 750, 'No', NULL, NULL, NULL);
  
  
  
  
  
