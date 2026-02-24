CREATE VIEW [amountview]
AS
SELECT office_name, street, city, SUM(collection_amount) amount, currency
FROM collection c
JOIN officeadresses oa ON oa.office_id=c.office_id
JOIN currency_type cu ON cu.currency_id=c.currency_id
WHERE YEAR(collection_date)=YEAR(GETDATE())
AND MONTH(collection_date)=MONTH(GETDATE())
GROUP BY c.office_id, c.currency_id, oa.office_name, oa.street, oa.city, cu.currency
