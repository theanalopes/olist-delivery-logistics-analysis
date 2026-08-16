/*Olist: Question d'analyse*/

/*Question 1 : Quel est le délai moyen de livraison des commandes ?*/

SELECT
AVG(CAST(DATEDIFF(DAY, order_purchase_timestamp, order_delivered_customer_date) AS DECIMAL(10,2))) AS avg_delivery_days
FROM olist_orders_dataset
WHERE order_delivered_customer_date IS NOT NULL;

/*Le délai moyen de livraison des commandes livrées est d’environ 12,49 jours. 
Cela signifie qu’en moyenne, il faut environ 12 à 13 jours entre le moment où un client passe sa commande et 
le moment où il la reçoit. Cependant, cette moyenne seule ne permet pas encore de déterminer si la performance 
des livraisons est bonne ou mauvaise. Il faudra notamment la comparer aux dates de livraison estimées et analyser
la proportion de commandes livrées en retard.*/

/*Question 2 :Quelle proportion des commandes a été livrée à temps et quelle proportion a été livrée en retard ?*/

SELECT
order_id,
CASE
WHEN order_delivered_customer_date > order_estimated_delivery_date
THEN 'Late'
ELSE 'On Time'
END AS delivery_status
FROM olist_orders_dataset
WHERE order_delivered_customer_date IS NOT NULL;


SELECT
CASE
WHEN order_delivered_customer_date > order_estimated_delivery_date
THEN 'Late'
ELSE 'On Time'
END AS delivery_status,
COUNT(*) AS nombre_commandes
FROM olist_orders_dataset
WHERE order_delivered_customer_date IS NOT NULL
GROUP BY
CASE
WHEN order_delivered_customer_date > order_estimated_delivery_date
THEN 'Late'
ELSE 'On Time'
END;

/*Sur les 96 476 commandes livrées analysées, 88 649 ont été livrées à temps et 7 827 en retard. 
Cela représente environ 91,9 % de livraisons à temps contre 8,1 % de livraisons en retard. 
La grande majorité des commandes respecte donc la date de livraison estimée. */

/* Question 3 : Où(dans quels région)les délais de livraison sont-ils les plus élevés ?*/

SELECT
c.customer_state,
AVG(
CAST(
DATEDIFF(
DAY,
o.order_purchase_timestamp,
o.order_delivered_customer_date
) AS DECIMAL(10,2)
)
) AS avg_delivery_days
FROM olist_orders_dataset o
JOIN olist_customers_dataset c
ON o.customer_id = c.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY avg_delivery_days DESC;

/*Les délais de livraison varient fortement selon les États. 
Roraima (RR) présente le délai moyen le plus élevé avec environ 29,3 jours, suivi d’Amapá (27,2 jours) 
et d’Amazonas (26,4 jours). Ces résultats montrent des différences géographiques importantes dans la performance
logistique, certains États ayant des délais largement supérieurs à la moyenne générale de 12,49 jours.*/

/* Question 4: Quels produits génèrent les coûts de livraison les plus élevés ?*/

SELECT
p.product_category_name,
AVG(oi.freight_value) AS avg_freight_value
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p
ON oi.product_id = p.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY p.product_category_name
ORDER BY avg_freight_value DESC;

/* Les frais moyens de livraison varient selon les catégories de produits.
La catégorie pcs présente les frais moyens les plus élevés avec environ
48,45 R$, suivie de eletrodomesticos_2 avec 44,54 R$.
Plusieurs catégories liées aux meubles figurent également parmi les catégories
ayant les frais de livraison moyens les plus élevés. */

/* Question 5: Les commandes livrées en retard sont-elles associées à une moins bonne satisfaction client ?*/

SELECT
CASE
WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
THEN 'Late'
ELSE 'On Time'
END AS delivery_status,
AVG(CAST(r.review_score AS DECIMAL(10,2))) AS avg_review_score
FROM olist_orders_dataset o
JOIN olist_order_reviews_dataset r
ON o.order_id = r.order_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY
CASE
WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
THEN 'Late'
ELSE 'On Time'
END;

/* Les commandes livrées en retard présentent une note moyenne
d'environ 2,57/5, contre 4,29/5 pour les commandes livrées à temps.
Les retards de livraison sont donc associés à une satisfaction client
plus faible dans les données analysées. */