-- View 1: User and Order Information
CREATE OR REPLACE VIEW user_order_info AS
SELECT
  u.user_id,
  u.first_name,
  u.last_name,
  u.email,
  o.order_id,
  o.order_date,
  o.order_status,
  o.order_price
FROM
  users u
JOIN
  orders o ON u.user_id = o.user_id;

-- View 2: Product and Brand Information
CREATE OR REPLACE VIEW product_brand_info AS
SELECT
  p.product_id,
  p.product_name,
  p.description,
  p.price,
  p.quantity,
  b.brand_name
FROM
  product p
JOIN
  brand b ON p.brand_id = b.brand_id;

-- View 3: User Ratings
CREATE OR REPLACE VIEW user_ratings AS
SELECT
  r.user_id,
  r.product_id,
  r.rating
FROM
  ratings r
JOIN
  users u ON r.user_id = u.user_id;

-- View 4: Order Items Information
CREATE OR REPLACE VIEW order_items_info AS
SELECT
  oi.order_id,
  oi.product_id,
  oi.quantity,
  oi.subtotal,
  p.product_name,
  o.order_date
FROM
  order_item oi
JOIN
  product p ON oi.product_id = p.product_id
JOIN
  orders o ON oi.order_id = o.order_id;

-- View 5: Category Hierarchy
CREATE OR REPLACE VIEW category_hierarchy AS
SELECT
  c1.category_id AS parent_category_id,
  c1.category_name AS parent_category_name,
  c2.category_id AS sub_category_id,
  c2.category_name AS sub_category_name
FROM
  category c1
LEFT JOIN
  category c2 ON c1.category_id = c2.parent_category;

-- Commit the changes
COMMIT;

SELECT * FROM user_order_info;
SELECT * FROM product_brand_info;
SELECT * FROM user_ratings;
SELECT * FROM order_items_info;
SELECT * FROM category_hierarchy;

