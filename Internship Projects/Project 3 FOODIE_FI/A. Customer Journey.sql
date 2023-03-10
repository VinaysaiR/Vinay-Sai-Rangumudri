use foodie_fi;
SELECT
  s.customer_id,
  f.plan_id, 
  f.plan_name,  
  s.start_date
FROM foodie_fi.plans AS f
JOIN foodie_fi.subscriptions AS s
  ON f.plan_id = s.plan_id;

  
SELECT
  s.customer_id,
  f.plan_id, 
  f.plan_name,  
  s.start_date
FROM foodie_fi.plans f
JOIN foodie_fi.subscriptions s
  ON f.plan_id = s.plan_id
WHERE s.customer_id = 1;

SELECT
  s.customer_id,
  f.plan_id, 
  f.plan_name,  
  s.start_date
FROM foodie_fi.plans f
JOIN foodie_fi.subscriptions s
  ON f.plan_id = s.plan_id
WHERE s.customer_id = 13;

SELECT
  s.customer_id,
  f.plan_id, 
  f.plan_name,  
  s.start_date
FROM foodie_fi.plans f
JOIN foodie_fi.subscriptions s
  ON f.plan_id = s.plan_id
WHERE s.customer_id = 15;

