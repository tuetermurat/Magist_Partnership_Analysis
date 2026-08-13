#order growth over time

SELECT 
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS order_month,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    orders
WHERE 
    order_status = 'delivered'
GROUP BY 
    order_month
ORDER BY 
    order_month;
    
#Tech order growth over time


SELECT 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
    COUNT(DISTINCT o.order_id) AS total_tech_orders
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN product_category_name_translation t ON p.product_category_name = t.product_category_name
WHERE t.product_category_name_english IN (
        'telephony',
        'tablets_printing_image',
        'computers',
        'computers_accessories',
        'audio',
        'electronics',
        'consoles_games',
        'pc_gamer'
    )
  AND o.order_status = 'delivered'
GROUP BY 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
ORDER BY 
    month ASC;
    
    
#tech seller growth over time

SELECT 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
    COUNT(DISTINCT oi.seller_id) AS active_tech_sellers
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN product_category_name_translation t ON p.product_category_name = t.product_category_name
WHERE t.product_category_name_english IN (
        'telephony',
        'tablets_printing_image',
        'computers',
        'computers_accessories',
        'audio',
        'electronics',
        'consoles_games',
        'pc_gamer'
    )
  AND o.order_status = 'delivered'
GROUP BY 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
ORDER BY 
    month ASC;
    


#Total seller growth over time

SELECT 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
    COUNT(DISTINCT oi.seller_id) AS total_active_sellers
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
ORDER BY 
    month ASC;
    



#total orders 

SELECT COUNT(order_item_id) FROM order_items 

#tech orders 


SELECT 
    COUNT(*) 
FROM order_items 
LEFT JOIN products 
    ON order_items.product_id = products.product_id 
LEFT JOIN product_category_name_translation 
    ON products.product_category_name = product_category_name_translation.product_category_name 
WHERE product_category_name_english IN (
    'audio', 
    'consoles_games', 
    'electronics',
    'computers_accessories', 
    'pc_gamer', 
    'computers',
    'tablets_printing_image', 
    'telephony'
);
    
    
    
    
#total sellers 

SELECT COUNT(DISTINCT seller_id) FROM sellers; 


#tech sellers

SELECT 
	COUNT(DISTINCT sellers.seller_id) 
    FROM sellers 

INNER JOIN order_items 
	ON sellers.seller_id = order_items.seller_id 

INNER JOIN products 
	ON order_items.product_id = products.product_id 
    
INNER JOIN product_category_name_translation 
	ON products.product_category_name = product_category_name_translation.product_category_name 
    
WHERE product_category_name_english 
	IN 
    ( 'audio', 'consoles_games', 'electronics',
    'computers_accessories', 'pc_gamer', 'computers',
    'tablets_printing_image', 'telephony');




