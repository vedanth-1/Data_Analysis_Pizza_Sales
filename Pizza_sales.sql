create database pizza_db;

select * from pizza_sales;

select sum(total_price) as total_revenue from pizza_sales;

select count(distinct order_id) as total_orders from pizza_sales;

select sum(total_price)/count(distinct order_id) as avg_order_value from pizza_sales;

select sum(quantity) as total_pizzas_sold from pizza_sales;

select sum(quantity) / count(distinct order_id) from pizza_sales;
select cast(cast(sum(quantity)as decimal(10,2)) / cast(count(distinct order_id)as decimal(10,2)) as decimal(10,2)) as avg_pizza_per_order from pizza_sales;

select datename(dw,order_date) as order_day, count(distinct order_id) as total_order from pizza_sales group by datename(dw,order_date);

SELECT datepart(hour, order_time) as order_hour, count(distinct order_id) as total_order from pizza_sales group by datepart(hour, order_time) order by datepart(hour, order_time);

select datename(month,order_date) as order_month, count(distinct order_id) as total_order from pizza_sales group by datename(month, order_date);

select pizza_category, sum(total_price)*100/ (select sum(total_price) from pizza_sales) as pct_sales from pizza_sales group by pizza_category;

select pizza_category,sum(total_price) as total_sales, sum(total_price)*100/ (select sum(total_price) from pizza_sales) as pct_sales from pizza_sales group by pizza_category;

select pizza_category,sum(total_price) as total_sales, sum(total_price)*100/ (select sum(total_price) from pizza_sales) as pct_sales from pizza_sales where month(order_date)=1 group by pizza_category;

select pizza_size,sum(total_price) as total_sales, sum(total_price)*100/ (select sum(total_price) from pizza_sales) as pct_sales from pizza_sales group by pizza_size order by pct_sales;;

select pizza_category,sum(quantity) as total_quantity_sold from pizza_sales group by pizza_category order by total_quantity_sold desc;

select top 5 pizza_name, sum(total_price) as total_sales from pizza_sales group by pizza_name order by total_sales desc;

select top 5 pizza_name, sum(total_price) as total_sales from pizza_sales group by pizza_name order by total_sales asc;

select top 5 pizza_name, sum(quantity) as total_quantity from pizza_sales group by pizza_name order by total_quantity desc;

select top 5 pizza_name, sum(quantity) as total_quantity from pizza_sales group by pizza_name order by total_quantity asc;

select datename(YEAR,order_date) as order_YEAR, count(distinct order_id) as total_order from pizza_sales group by datename(YEAR, order_date);