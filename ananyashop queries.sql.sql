SELECT SUM(amount) as total_revenue from payments;

select p.product_name, sum(oi.quantity * p.price) as revenue from order_item oi
join products p on oi.product_id = p.product_id
join orders1 o on  oi.order_id = o.order_id
where	o.order_status = 'delivered'
group by p.product_name
order by revenue desc;

SELECT c.name,
       SUM(p.amount) AS total_spent
FROM customers c
JOIN orders1 o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.name
ORDER BY total_spent DESC;


SELECT COUNT(*) AS cancelled_orders
FROM orders1
WHERE order_status = 'Cancelled';