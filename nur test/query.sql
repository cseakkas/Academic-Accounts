#Q.1:
SELECT 
    o.id AS order_id,
    o.order_date,
    o.total_amount,
    o.status,
    p.name AS product_name,
    oi.quantity,
    oi.price AS product_price
FROM 
    customers c
JOIN 
    orders o ON c.id = o.customer_id
JOIN 
    order_items oi ON o.id = oi.order_id
JOIN 
    products p ON oi.product_id = p.id
WHERE 
    c.name = 'Jonson';  -- Filter by customer name

#Q.2:
SELECT 
    p.category,
    SUM(oi.price * oi.quantity) AS total_revenue
FROM 
    orders o
JOIN 
    order_items oi ON o.id = oi.order_id
JOIN 
    products p ON oi.product_id = p.id
WHERE 
    o.status = 'Completed'
GROUP BY 
    p.category
ORDER BY 
    total_revenue DESC;

#Q.3:

SELECT 
    id, 
    name, 
    description, 
    price, 
    category
FROM 
    products
ORDER BY 
    price DESC
LIMIT 1;

#Q.4:
SELECT 
    c.id AS customer_id,
    c.name AS customer_name,
    c.email,
    SUM(o.total_amount) AS total_spending
FROM 
    customers c
JOIN 
    orders o ON c.id = o.customer_id
GROUP BY 
    c.id, c.name, c.email
ORDER BY 
    total_spending DESC
LIMIT 5;

#Q.5:
SELECT 
    c.id AS customer_id,
    c.name AS customer_name,
    c.email
FROM 
    customers c
LEFT JOIN 
    orders o ON c.id = o.customer_id
WHERE 
    o.id IS NULL;



