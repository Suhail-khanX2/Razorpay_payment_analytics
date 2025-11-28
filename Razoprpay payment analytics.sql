CREATE DATABASE razorpay_payment_analytics;

USE razorpay_payment_analytics;

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,        -- Unique ID for each payment
    customer_id INT,                   -- ID of the customer making the payment
    amount INT,                        -- Transaction amount
    currency VARCHAR(10),              -- Currency code (e.g., INR, USD)
    method VARCHAR(20),                -- Payment method (card, upi, wallet, netbanking)
    status VARCHAR(20),                -- Payment status (success, failed, refunded)
    payment_date DATE                  -- Date of the payment (YYYY-MM-DD format)
);

CREATE TABLE payment_logs (
    log_id INT PRIMARY KEY,        -- Unique ID for each log entry
    payment_id INT,                -- References the payment this log belongs to
    event VARCHAR(50),             -- Type of event (e.g., 'initiated', 'processed', 'failed', 'refunded')
    event_time DATETIME            -- Timestamp when the event occurred (date + time)
);

CREATE TABLE refunds (
    refund_id INT PRIMARY KEY,        -- Unique ID for each refund record
    payment_id INT,                   -- References the original payment being refunded
    refund_amount INT,                -- Amount refunded to the customer
    refund_status VARCHAR(20)         -- Status of the refund (e.g., 'processed', 'pending', 'failed')
);

INSERT INTO payments (payment_id, customer_id, amount, currency, method, status, payment_date)
VALUES
(101, 1, 500,  'INR', 'UPI',    'success',  '2025-01-01'),
(102, 2, 1200, 'INR', 'Card',   'failed',   '2025-01-02'),
(103, 3, 300,  'INR', 'Wallet', 'success',  '2025-01-03'),
(104, 4, 2000, 'INR', 'UPI',    'refunded', '2025-01-03'),
(105, 1, 700,  'INR', 'Card',   'success',  '2025-01-04'),
(106, 5, 1500, 'INR', 'Card',   'refunded', '2025-01-05'),
(107, 2, 400,  'INR', 'UPI',    'success',  '2025-01-06'),
(108, 6, 800,  'INR', 'Wallet', 'success',  '2025-01-07'),
(109, 7, 2500, 'INR', 'Card',   'success',  '2025-01-08'),
(110, 8, 600,  'INR', 'UPI',    'failed',   '2025-01-09'),
(111, 9, 1000, 'INR', 'Wallet', 'success',  '2025-01-10'),
(112, 10, 350, 'INR', 'UPI',    'success',  '2025-01-11'),
(113, 3, 2200, 'INR', 'Card',   'refunded', '2025-01-12'),
(114, 4, 900,  'INR', 'Wallet', 'success',  '2025-01-13'),
(115, 5, 1200, 'INR', 'UPI',    'success',  '2025-01-14'),
(116, 6, 450,  'INR', 'Card',   'failed',   '2025-01-15'),
(117, 7, 700,  'INR', 'UPI',    'success',  '2025-01-16'),
(118, 8, 3000, 'INR', 'Card',   'success',  '2025-01-17'),
(119, 9, 200,  'INR', 'Wallet', 'success',  '2025-01-18'),
(120, 10, 1800,'INR', 'UPI',    'refunded', '2025-01-19'),
(121, 1, 950,  'INR', 'Card',   'success',  '2025-01-20'),
(122, 2, 400,  'INR', 'Wallet', 'success',  '2025-01-21'),
(123, 3, 750,  'INR', 'UPI',    'success',  '2025-01-22'),
(124, 4, 5000, 'INR', 'Card',   'failed',   '2025-01-23'),
(125, 5, 600,  'INR', 'Wallet', 'success',  '2025-01-24'),
(126, 6, 1100, 'INR', 'UPI',    'success',  '2025-01-25'),
(127, 7, 250,  'INR', 'Card',   'success',  '2025-01-26'),
(128, 8, 1300, 'INR', 'Wallet', 'refunded', '2025-01-27'),
(129, 9, 400,  'INR', 'UPI',    'success',  '2025-01-28'),
(130, 10, 2200,'INR', 'Card',   'success',  '2025-01-29'),
(131, 1, 700,  'INR', 'Wallet', 'success',  '2025-01-30'),
(132, 2, 900,  'INR', 'UPI',    'failed',   '2025-01-31'),
(133, 3, 1500, 'INR', 'Card',   'success',  '2025-02-01'),
(134, 4, 350,  'INR', 'Wallet', 'success',  '2025-02-02'),
(135, 5, 2000, 'INR', 'UPI',    'success',  '2025-02-03'),
(136, 6, 450,  'INR', 'Card',   'refunded', '2025-02-04'),
(137, 7, 800,  'INR', 'Wallet', 'success',  '2025-02-05'),
(138, 8, 1200, 'INR', 'UPI',    'success',  '2025-02-06'),
(139, 9, 600,  'INR', 'Card',   'failed',   '2025-02-07'),
(140, 10, 300, 'INR', 'Wallet', 'success',  '2025-02-08'),
(141, 1, 1000, 'INR', 'UPI',    'success',  '2025-02-09'),
(142, 2, 2500, 'INR', 'Card',   'success',  '2025-02-10'),
(143, 3, 400,  'INR', 'Wallet', 'success',  '2025-02-11'),
(144, 4, 700,  'INR', 'UPI',    'refunded', '2025-02-12'),
(145, 5, 1500, 'INR', 'Card',   'success',  '2025-02-13'),
(146, 6, 500,  'INR', 'Wallet', 'success',  '2025-02-14'),
(147, 7, 2200, 'INR', 'UPI',    'success',  '2025-02-15'),
(148, 8, 350,  'INR', 'Card',   'failed',   '2025-02-16'),
(149, 9, 800,  'INR', 'Wallet', 'success',  '2025-02-17'),
(150, 10, 1200,'INR', 'UPI',    'success',  '2025-02-18');

INSERT INTO payments (payment_id, customer_id, amount, currency, method, status, payment_date)
VALUES (160, 3, 900, 'INR', 'Wallet', 'refunded', '2025-02-19');


INSERT INTO payment_logs (log_id, payment_id, event, event_time)
VALUES
(1, 102, 'initiated', '2025-01-02 10:10:00'),
(2, 102, 'authentication_failed', '2025-01-02 10:10:10'),
(3, 104, 'initiated', '2025-01-03 09:00:00'),
(4, 104, 'success', '2025-01-03 09:00:10'),
(5, 106, 'initiated', '2025-01-05 12:00:00'),
(6, 106, 'success', '2025-01-05 12:00:10'),
(7, 101, 'initiated', '2025-01-01 08:00:00'),
(8, 101, 'success', '2025-01-01 08:00:05'),
(9, 103, 'initiated', '2025-01-03 11:00:00'),
(10, 103, 'success', '2025-01-03 11:00:07'),
(11, 105, 'initiated', '2025-01-04 14:00:00'),
(12, 105, 'success', '2025-01-04 14:00:08'),
(13, 107, 'initiated', '2025-01-06 09:30:00'),
(14, 107, 'success', '2025-01-06 09:30:06'),
(15, 108, 'initiated', '2025-01-07 10:00:00'),
(16, 108, 'success', '2025-01-07 10:00:09'),
(17, 109, 'initiated', '2025-01-08 15:00:00'),
(18, 109, 'success', '2025-01-08 15:00:12'),
(19, 110, 'initiated', '2025-01-09 16:00:00'),
(20, 110, 'authentication_failed', '2025-01-09 16:00:10'),
(21, 111, 'initiated', '2025-01-10 09:00:00'),
(22, 111, 'success', '2025-01-10 09:00:05'),
(23, 112, 'initiated', '2025-01-11 11:00:00'),
(24, 112, 'success', '2025-01-11 11:00:06'),
(25, 113, 'initiated', '2025-01-12 13:00:00'),
(26, 113, 'success', '2025-01-12 13:00:08'),
(27, 113, 'refund_initiated', '2025-01-12 13:10:00'),
(28, 113, 'refund_success', '2025-01-12 13:15:00'),
(29, 114, 'initiated', '2025-01-13 10:00:00'),
(30, 114, 'success', '2025-01-13 10:00:07'),
(31, 115, 'initiated', '2025-01-14 12:00:00'),
(32, 115, 'success', '2025-01-14 12:00:09'),
(33, 116, 'initiated', '2025-01-15 14:00:00'),
(34, 116, 'authentication_failed', '2025-01-15 14:00:10'),
(35, 117, 'initiated', '2025-01-16 09:00:00'),
(36, 117, 'success', '2025-01-16 09:00:05'),
(37, 118, 'initiated', '2025-01-17 11:00:00'),
(38, 118, 'success', '2025-01-17 11:00:08'),
(39, 119, 'initiated', '2025-01-18 13:00:00'),
(40, 119, 'success', '2025-01-18 13:00:06'),
(41, 120, 'initiated', '2025-01-19 15:00:00'),
(42, 120, 'success', '2025-01-19 15:00:09'),
(43, 120, 'refund_initiated', '2025-01-19 15:10:00'),
(44, 120, 'refund_success', '2025-01-19 15:15:00'),
(45, 121, 'initiated', '2025-01-20 09:00:00'),
(46, 121, 'success', '2025-01-20 09:00:05'),
(47, 122, 'initiated', '2025-01-21 10:00:00'),
(48, 122, 'success', '2025-01-21 10:00:07'),
(49, 123, 'initiated', '2025-01-22 11:00:00'),
(50, 123, 'success', '2025-01-22 11:00:06');

INSERT INTO refunds (refund_id, payment_id, refund_amount, refund_status) VALUES
(1, 104, 2000, 'processed'),
(2, 106, 1500, 'processed'),
(3, 113, 2200, 'pending'),
(4, 120, 1800, 'failed'),
(5, 128, 1300, 'processed'),
(6, 136, 450,  'pending'),
(7, 144, 700,  'processed'),
(8, 150, 1200, 'failed'),
(9, 160, 900,  'processed');

-- Select all columns
-- Filter only rows where the payment was successful
SELECT *
FROM payments
WHERE status = 'success';

-- Total numbers of success transcations
SELECT status, COUNT(*) AS total_payment FROM payments
WHERE status ='success'; 

-- Select all failed transactions
SELECT *
FROM payments
WHERE status = 'failed';

-- Total numbers of failed transactions
SELECT status, COUNT(*) AS total_payment FROM payments
WHERE status ='failed';

-- Sort by amount in descending order
SELECT *
FROM payments
ORDER BY amount DESC;

-- Filter only successful transactions
-- Sort results by date in ascending order
SELECT *
FROM payments
WHERE status = 'success'
ORDER BY payment_date ASC;

-- Select only failed transactions
-- Sort by amount from highest to lowest
SELECT *
FROM payments
WHERE status = 'failed'
ORDER BY amount DESC;

-- Group rows based on payment method
-- Count how many payments each method has
SELECT method, COUNT(*) AS result FROM payments
GROUP BY method;

-- Group by payment method
-- Sum all amounts inside each group
SELECT method, SUM(amount) AS total_payment FROM payments
GROUP BY method;

-- Filter only successful payments
-- Then group by method
SELECT method, COUNT(*) AS success_count
FROM payments
WHERE status = 'success'
GROUP BY method;

-- Count success and total for each method
-- CASE WHEN checks the condition inside the group
SELECT 
    method,
    COUNT(*) AS total_attempts,
    SUM(CASE WHEN status = 'success' THEN 1 ELSE 0 END) AS success_count
FROM payments
GROUP BY method;

-- Get customers who spent more than 1000 AND made more than one payment
SELECT customer_id, 
       SUM(amount) AS total_spent, 
       COUNT(*) AS total_transactions
FROM payments
GROUP BY customer_id
HAVING SUM(amount) > 1000
   AND COUNT(*) > 1;
   
-- Show only payments that were refunded
-- INNER JOIN returns matching rows from both tables
SELECT 
    p.payment_id,
    p.amount,
    p.status,
    r.refund_amount,
    r.refund_status,
    CASE 
        WHEN r.refund_status = 'processed' THEN 'Refund Successful'
        WHEN r.refund_status = 'pending' THEN 'Refund In Progress'
        WHEN r.refund_status = 'failed' THEN 'Refund Failed'
        ELSE 'Unknown'
    END AS refund_outcome
FROM payments p
INNER JOIN refunds r 
    ON p.payment_id = r.payment_id;

-- LEFT JOIN keeps all rows from payments
-- Refund columns show NULL where no refund exists
SELECT
	p.payment_id,
    p.amount,
    p.status,
    r.refund_amount,
    r.refund_status
FROM payments p
LEFT JOIN refunds r
	ON p.payment_id = r.payment_id;
    
-- Show all refunds even if their payment_id doesn't exist in payments
SELECT
	p.payment_id,
    p.amount,
    p.status,
    r.refund_amount,
    r.refund_status
FROM payments p
RIGHT JOIN refunds r
	ON p.payment_id = r.payment_id;

-- Combine each payment with its corresponding log events
SELECT
	p.payment_id,
    p.status,
    l.event,
    l.event_time
FROM payments p 
INNER JOIN payment_logs l
	ON p.payment_id = l.payment_id;

-- Filter card payments that failed
-- Join to show the log flow of those failures
SELECT
	p.payment_id,
    p.method,
    p.status,
    l.event,
    l.event_time
FROM payments p 
INNER JOIN payment_logs l 
	ON p.payment_id = l.payment_id
WHERE p.method = 'Card'
AND p.status ='failed';

-- Show payment details + events + refund info in one result
SELECT
	p.payment_id,
    p.amount,
    p.status,
    l.event,
    r.refund_amount,
    r.refund_status
FROM payments p
LEFT JOIN payment_logs l 
	ON p.payment_id = l.payment_id
LEFT JOIN refunds r 
	ON p.payment_id = r.payment_id;
   
SELECT * FROM payments;
SELECT * FROM refunds;
SELECT * FROM payment_logs;

-- 1. Find payments that are higher than the average payment amount
SELECT * 
FROM payments
WHERE amount>(
	SELECT AVG(amount)
    FROM payments);
    
-- CTE to calculate monthly revenue and total successful payments
WITH monthly_summary AS (
    SELECT 
        DATE_FORMAT(payment_date, '%Y-%m') AS month,
        COUNT(*) AS total_transactions,
        SUM(CASE WHEN status = 'success' THEN amount ELSE 0 END) AS successful_revenue
    FROM payments
    GROUP BY DATE_FORMAT(payment_date, '%Y-%m')
)
SELECT *
FROM monthly_summary;

-- Categorize customers by their total spending
SELECT 
    customer_id,
    SUM(amount) AS total_spent,
    CASE
        WHEN SUM(amount) > 3000 THEN 'High Value'
        WHEN SUM(amount) BETWEEN 1500 AND 3000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM payments
GROUP BY customer_id
ORDER BY total_spent DESC;
  
 
