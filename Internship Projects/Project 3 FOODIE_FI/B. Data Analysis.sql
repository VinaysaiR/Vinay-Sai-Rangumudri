use foodie_fi;

-- 1.How many customers has Foodie-Fi ever had?
SELECT
	COUNT(DISTINCT customer_id) AS num_customers
FROM subscriptions;

-- 2. What is the monthly distribution of trial plan start_date values for our dataset - use the start of the month as the group by value

SELECT
  MONTH(start_date) AS month_date, -- Cast month as integer
  monthname(start_date) AS month_name, -- Cast month as string
  COUNT(*) AS trial_subscriptions
FROM subscriptions s
JOIN plans p
  ON s.plan_id = p.plan_id
WHERE s.plan_id = 0
GROUP BY MONTH(start_date), 
   monthname(start_date)
ORDER BY month_date ASC;


-- 3.What plan 'start_date' values occur after the year 2020 for our dataset? Show the breakdown by count of events for each 'plan_name'

SELECT
	count(plan_name) AS n_plans,
	plan_name
FROM foodie_fi.subscriptions s
JOIN foodie_fi.plans p
  ON s.plan_id = p.plan_id 
WHERE start_date >= '2020-01-01'
GROUP BY plan_name;

-- 4.What is the customer count and percentage of customers who have churned rounded to 1 decimal place?
SELECT
    COUNT(DISTINCT customer_id) AS num_customers,
    COUNT(*) AS cust_churn,
    ROUND(COUNT(*) * 100 / (SELECT COUNT(DISTINCT customer_id) FROM subscriptions),1) AS perc_churn
FROM subscriptions
WHERE plan_id = 4;

-- 5.How many customers have churned straight after their initial free trial - what percentage is this rounded to the nearest whole number?
WITH cte_churn AS (
	SELECT
		*,
		LAG(plan_id, 1) OVER(PARTITION BY customer_id ORDER BY plan_id) AS prev_plan
	FROM subscriptions)
SELECT
	COUNT(prev_plan) AS cnt_churn,
    	ROUND(COUNT(*) * 100/(SELECT COUNT(DISTINCT customer_id) FROM subscriptions),0) AS perc_churn
FROM cte_churn
WHERE plan_id = 4 and prev_plan = 0;

-- 6.What is the number and percentage of customer plans after their initial free trial?
WITH cte_next_plan AS (
	SELECT
		*,
		LEAD(plan_id, 1) OVER(PARTITION BY customer_id ORDER BY plan_id) AS next_plan
	FROM subscriptions)
SELECT
	next_plan,
	COUNT(*) AS num_cust,
    	ROUND(COUNT(*) * 100/(SELECT COUNT(DISTINCT customer_id) FROM subscriptions),1) AS perc_next_plan
FROM cte_next_plan
WHERE next_plan is not null and plan_id = 0
GROUP BY next_plan
ORDER BY next_plan;

-- 7.What is the customer count and percentage breakdown of all 5 plan_name values at 2020-12-31?
WITH cte_next_date AS (
	SELECT
		*,
		LEAD(start_date, 1) OVER(PARTITION BY customer_id ORDER BY start_date) AS next_date
	FROM subscriptions
    WHERE start_date <= '2020-12-31'),
plans_breakdown AS(
SELECT
	plan_id,
    COUNT(DISTINCT customer_id) AS num_customer
FROM cte_next_date
WHERE (next_date IS NOT NULL AND (start_date < '2020-12-31' AND next_date > '2020-12-31'))
      OR (next_date IS NULL AND start_date < '2020-12-31')
GROUP BY plan_id)
SELECT
	plan_id,
	num_customer,
    ROUND(num_customer * 100/(SELECT COUNT(DISTINCT customer_id) FROM subscriptions),1) AS perc_customer
FROM plans_breakdown
GROUP BY plan_id, num_customer
ORDER BY plan_id;

-- 8.How many customers have upgraded to an annual in 2020?
SELECT
	COUNT(customer_id) AS num_customer
FROM subscriptions
WHERE plan_id = 3 AND start_date <= '2020-12-31';

-- 9.How many days on average does it take for a customer to an annual plan from the day they join Foodie-Fi?
WITH annual_plan AS (
	SELECT
		customer_id,
        start_date AS annual_date
	FROM subscriptions
    	WHERE plan_id = 3),
trial_plan AS (
	SELECT
		customer_id,
        start_date AS trial_date
	FROM subscriptions
    WHERE plan_id = 0
)
SELECT
	ROUND(AVG(DATEDIFF(annual_date, trial_date)),0) AS avg_upgrade
FROM annual_plan ap
JOIN trial_plan tp ON ap.customer_id = tp.customer_id;

-- 10.Can you further breakdown this average value into 30 day periods (i.e. 0-30 days, 31-60 days etc)
WITH annual_plan AS (
	SELECT
		customer_id,
        start_date AS annual_date
	FROM subscriptions
    WHERE plan_id = 3),
trial_plan AS (
	SELECT
		customer_id,
        start_date AS trial_date
	FROM subscriptions
    WHERE plan_id = 0
),
day_period AS (
SELECT
	DATEDIFF(annual_date, trial_date) AS diff
FROM trial_plan tp
LEFT JOIN annual_plan ap ON tp.customer_id = ap.customer_id
WHERE annual_date is not null
),
bins AS (
SELECT
	*, FLOOR(diff/30) AS bins
FROM day_period)
SELECT
	CONCAT((bins * 30) + 1, ' - ', (bins + 1) * 30, ' days ') AS days,
	COUNT(diff) AS total
FROM bins
GROUP BY bins;

-- 11.How many customers downgraded from a pro monthly to a basic monthly plan in 2020?
WITH next_plan AS (
	SELECT 
		*,
		LEAD(plan_id, 1) OVER(PARTITION BY customer_id ORDER BY start_date, plan_id) AS plan
	FROM subscriptions)
SELECT
	COUNT(DISTINCT customer_id) AS num_downgrade
FROM next_plan np
LEFT JOIN plans p ON p.plan_id = np.plan_id
WHERE p.plan_name = 'pro monthly' AND np.plan = 1 AND start_date <= '2020-12-31';
