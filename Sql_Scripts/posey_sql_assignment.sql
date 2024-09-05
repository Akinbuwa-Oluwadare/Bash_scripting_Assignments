-- List of order IDs where either gloss_qty or poster_qty is greater than 4000
SELECT id FROM orders WHERE gloss_qty > 4000 OR poster_qty > 4000;

-- Orders where standard_qty is zero and either gloss_qty or poster_qty is over 1000
SELECT * FROM orders WHERE standard_qty = 0 AND (gloss_qty > 1000 OR poster_qty > 1000);

-- Company names that start with 'C' or 'W' and contain 'ana' but not 'eana'
SELECT name as company_name  
FROM accounts 
WHERE (name LIKE 'C%' OR name LIKE 'W%') 
AND (primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
AND (primary_poc NOT LIKE '%eana%');


-- Sales reps with their regions and accounts, sorted by account name
SELECT region.name AS region, sales_reps.name AS sales_rep, 
		accounts.name AS account_name 
FROM region 
JOIN sales_reps ON region.id = sales_reps.region_id 
JOIN accounts ON sales_reps.id = accounts.sales_rep_id 
ORDER BY accounts.name;
