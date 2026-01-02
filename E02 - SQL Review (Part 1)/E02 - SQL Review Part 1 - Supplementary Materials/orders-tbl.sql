-- Drop table
-- DROP TABLE orders;

CREATE TABLE orders (
	order_id int4 NULL,
	product_code int4 NULL,
	order_time timestamp NULL,
	amount int4 NULL,
	total_price numeric NULL
);

INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (1,1,'2017-12-23 09:00:00',1,240);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (2,1,'2017-12-23 09:23:00',2,480);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (3,8,'2017-12-23 09:23:00',1,270);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (4,2,'2017-12-23 09:23:00',2,240);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (5,5,'2017-11-21 14:20:00',2,480);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (6,5,'2017-11-21 14:20:00',1,240);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (7,5,'2017-11-22 14:20:00',1,240);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (8,9,'2017-11-22 14:20:00',5,330);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (9,8,'2017-12-21 14:20:00',1,270);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (10,9,'2017-11-12 17:11:00',3,198);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (11,2,'2017-12-23 09:23:00',2,240);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (12,9,'2017-11-12 14:20:00',1,66);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (13,2,'2017-12-23 09:23:00',3,360);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (14,1,'2017-10-23 11:23:00',3,720);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (15,8,'2017-12-20 14:23:00',1,270);
INSERT INTO orders (order_id,product_code,order_time,amount,total_price) VALUES (16,6,'2017-12-20 14:23:00',1,270);
