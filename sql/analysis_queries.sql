/*1.Total customers*/
SELECT COUNT(*) AS total_customers
FROM subscriptions;
/*2.Active Subscriptions*/
SELECT COUNT(*) AS active_subscriptions
FROM subscriptions
WHERE churn_flag = False;
/*3.Churned customers*/
SELECT COUNT(*) AS churned_customers
FROM subscriptions
WHERE churn_flag = True;
/*4.Toatal MRR*/
SELECT SUM(mrr_amount) AS total_mrr
FROM subscriptions;
/*5.Revenue by plan tier*/
SELECT 
    plan_tier,
    SUM(mrr_amount) AS revenue
FROM subscriptions
GROUP BY plan_tier
ORDER BY revenue DESC;
/*6.average revenue per customer*/
SELECT AVG(mrr_amount) AS avg_mrr
FROM subscriptions;
/*7.Monthly vs Annual Customers*/
SELECT 
    billing_frequency,
    COUNT(*) AS customer_count
FROM subscriptions
GROUP BY billing_frequency;
/*8.trial users*/
SELECT COUNT(*) AS trial_users
FROM subscriptions
WHERE is_trial = True;
/*9.Upgraded Customers*/
SELECT COUNT(*) AS upgraded_customers
FROM subscriptions
WHERE upgrade_flag = True;