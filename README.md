# Olist Delivery & Logistics Performance Analysis

## English Version

### Project Overview

This project analyzes the delivery and logistics performance of Olist, a Brazilian e-commerce marketplace.

The main goal of this project was to understand how well orders were delivered, identify delivery delays, analyze the impact of delivery performance on customer satisfaction, and compare delivery times across Brazilian states.

I used SQL Server to explore and analyze the data, and Power BI to create the data model, calculate key performance indicators, and build the final dashboard.

---

## Business Objectives

The analysis focused on the following questions:

1. What is the overall delivery performance of Olist?
2. What percentage of delivered orders arrive on time or late?
3. How does the delayed delivery rate change over time?
4. Does delivery performance affect customer satisfaction?
5. How are orders distributed across Brazilian states?
6. Which states have the longest average delivery times?

---

## Dataset

The dataset comes from the Brazilian E-Commerce Public Dataset by Olist.

The original dataset contains several tables related to customers, orders, products, payments, reviews, sellers, and geographic information.

For this project, I focused on the tables that were useful for the logistics analysis:

- `olist_orders_dataset`
- `olist_order_items_dataset`
- `olist_customers_dataset`
- `olist_order_reviews_dataset`
- `olist_products_dataset`

The orders table contains information such as the purchase date, estimated delivery date, actual delivery date, and order status.

The other tables were used to add information about customers, products, order items, and customer reviews.

---

## Tools Used

### SQL Server

I used SQL Server to explore the dataset and answer some of the main business questions.

This included:

- Exploring the different tables and columns
- Checking missing values
- Calculating delivery times
- Identifying delayed and on-time deliveries
- Joining different tables
- Comparing delivery performance with customer reviews
- Exploring logistics information related to orders and products

### Power BI

I used Power BI to build the final data model and dashboard.

This included:

- Connecting Power BI to SQL Server
- Reviewing and preparing the data
- Creating relationships between tables
- Creating calculated columns
- Creating DAX measures
- Creating KPIs
- Building charts and a geographic map
- Organizing the results into one dashboard

---

## Data Model

The Power BI model connects the main order table with customer, order item, product, and review information.

The relationships between these tables made it possible to analyze delivery performance from different perspectives, including customer satisfaction and geographic location.

The `order_id`, `customer_id`, and `product_id` fields were used to connect the relevant tables.

---

## Key Performance Indicators

Four main KPIs were selected for the dashboard.

| KPI | Result |
| --- | ---: |
| Total Orders | 99K |
| On-Time Delivery Rate | 91.89% |
| Delayed Delivery Rate | 8.11% |
| Average Delivery Time | 12.50 Days |

These indicators provide a quick overview of the overall logistics performance.

---

## Dashboard

The final Power BI dashboard combines the main KPIs and analyses in one view.## Interactive Power BI Dashboard

The Power BI dashboard is available online and can be explored interactively.

https://app.powerbi.com/groups/me/reports/300401ef-987d-405b-ad3d-a95d8f2bcb6e/4321868b2ac448ca2c28?experience=power-bi

### Dashboard Preview

<img width="365" height="497" alt="Olist analysis dashboard" src="https://github.com/user-attachments/assets/7974d6ab-32cc-4e5a-bf31-a1d0258d06ae" />


The dashboard includes:

- Total number of orders
- On-time delivery rate
- Delayed delivery rate
- Average delivery time
- Delayed delivery rate over time
- Customer satisfaction by delivery status
- Orders by customer state
- Top 10 states by average delivery time

---

## Key Insights

### 1. Most delivered orders arrive on time

The overall on-time delivery rate is approximately 91.89%, while the delayed delivery rate is 8.11%.

This shows that most orders are delivered within the expected delivery date.

### 2. Delivery delays change over time

The delayed delivery rate is not constant across the analyzed period.

Some months show higher delayed delivery rates than others, which suggests that delivery performance can change depending on the period.

September 2016 shows a 100% delayed delivery rate, but this month contains very few orders. For this reason, this result should not be interpreted as a normal representation of Olist's delivery performance.

### 3. Delivery performance has a strong relationship with customer satisfaction

Orders delivered on time have an average review score of approximately 4.29 out of 5.

Delayed orders have a much lower average score of approximately 2.57.

Orders classified as not delivered have an even lower average score of approximately 1.76.

This suggests that delivery performance is strongly related to customer satisfaction.

### 4. Delivery performance differs across Brazilian states

The geographic analysis shows that order volume and delivery performance are not the same across all states.

Some states have much longer average delivery times than the overall average of 12.50 days.

### 5. Some states experience particularly long delivery times

The states with the highest average delivery times include:

| State | Average Delivery Time |
| --- | ---: |
| RR | 29.3 Days |
| AP | 27.2 Days |
| AM | 26.4 Days |
| AL | 24.5 Days |
| PA | 23.7 Days |

These results show important geographic differences in delivery performance.

---

## Recommendations

Based on the analysis, I would recommend the following actions:

1. Pay more attention to states with the longest average delivery times.

2. Investigate the reasons behind periods with higher delayed delivery rates.

3. Monitor delivery performance regularly using KPIs such as the delayed delivery rate and average delivery time.

4. Prioritize reducing delivery delays because delayed orders are associated with much lower customer review scores.

5. Consider geographic differences when evaluating logistics performance instead of using only the national average.

---

## Skills Demonstrated

This project allowed me to practice and demonstrate several technical and analytical skills:

- SQL
- SQL Server
- Data exploration
- Data cleaning
- Data modeling
- Table relationships
- SQL joins
- Power BI
- Power Query
- DAX
- KPI creation
- Data visualization
- Geographic analysis
- Business analysis
- Problem solving
- Data interpretation
- Communication of results

---

## What I Learned

This project helped me understand how data analysis can be used to evaluate logistics performance.

One of the most important things I learned was that a global KPI does not always tell the full story. Olist has a high overall on-time delivery rate, but the analysis by month and by state shows important differences.

I also learned how delivery performance can be connected to customer satisfaction. The difference in review scores between on-time and delayed orders shows why logistics performance is important not only for operations but also for the customer experience.

Finally, this project gave me more practice using SQL Server and Power BI together in an end-to-end data analysis project.

---

# Analyse de la performance des livraisons et de la logistique d'Olist

## Version française

### Présentation du projet

Ce projet analyse la performance des livraisons et de la logistique d'Olist, une plateforme brésilienne de commerce électronique.

L'objectif principal était de comprendre la performance des livraisons, d'identifier les retards, d'analyser l'impact de la livraison sur la satisfaction des clients et de comparer les délais de livraison entre les différents États du Brésil.

J'ai utilisé SQL Server pour explorer et analyser les données, puis Power BI pour créer le modèle de données, calculer les principaux indicateurs de performance et construire le tableau de bord final.

---

## Objectifs d'affaires

L'analyse s'est concentrée sur les questions suivantes :

1. Quelle est la performance globale des livraisons d'Olist ?
2. Quel pourcentage des commandes livrées arrive à temps ou en retard ?
3. Comment le taux de retard évolue-t-il dans le temps ?
4. Est-ce que la performance des livraisons influence la satisfaction des clients ?
5. Comment les commandes sont-elles réparties entre les différents États du Brésil ?
6. Quels États ont les délais moyens de livraison les plus longs ?

---

## Jeu de données

Les données proviennent du Brazilian E-Commerce Public Dataset by Olist.

Le jeu de données original contient plusieurs tables sur les clients, les commandes, les produits, les paiements, les avis clients, les vendeurs et les informations géographiques.

Pour ce projet, je me suis concentrée sur les tables utiles pour mon analyse logistique :

- `olist_orders_dataset`
- `olist_order_items_dataset`
- `olist_customers_dataset`
- `olist_order_reviews_dataset`
- `olist_products_dataset`

La table des commandes contient notamment la date d'achat, la date de livraison estimée, la date réelle de livraison et le statut de la commande.

Les autres tables m'ont permis d'ajouter des informations sur les clients, les produits, les articles commandés et les avis clients.

---

## Outils utilisés

### SQL Server

J'ai utilisé SQL Server pour explorer le jeu de données et répondre à plusieurs questions d'affaires.

Cela comprenait :

- L'exploration des différentes tables et colonnes
- La vérification des valeurs manquantes
- Le calcul des délais de livraison
- L'identification des livraisons en retard et à temps
- La jointure de différentes tables
- La comparaison entre la performance des livraisons et les avis clients
- L'exploration des informations logistiques liées aux commandes et aux produits

### Power BI

J'ai utilisé Power BI pour construire le modèle de données et le tableau de bord final.

Cela comprenait :

- La connexion de Power BI à SQL Server
- La vérification et la préparation des données
- La création des relations entre les tables
- La création de colonnes calculées
- La création de mesures DAX
- La création des KPI
- La création de graphiques et d'une carte géographique
- L'organisation des résultats dans un tableau de bord

---

## Modèle de données

Le modèle Power BI relie la table principale des commandes aux informations sur les clients, les articles commandés, les produits et les avis clients.

Ces relations m'ont permis d'analyser la performance des livraisons sous plusieurs angles, notamment la satisfaction des clients et la localisation géographique.

Les champs `order_id`, `customer_id` et `product_id` ont été utilisés pour relier les tables pertinentes.

---

## Indicateurs clés de performance

Quatre KPI principaux ont été sélectionnés pour le tableau de bord.

| KPI | Résultat |
| --- | ---: |
| Nombre total de commandes | 99K |
| Taux de livraison à temps | 91,89 % |
| Taux de livraison en retard | 8,11 % |
| Délai moyen de livraison | 12,50 jours |

Ces indicateurs permettent d'avoir rapidement une vue d'ensemble de la performance logistique.

---

## Tableau de bord

Le tableau de bord Power BI final regroupe les principaux KPI et les différentes analyses.## Tableau de bord Power BI interactif

Le tableau de bord Power BI est disponible en ligne et peut être consulté de manière interactive.

https://app.powerbi.com/groups/me/reports/300401ef-987d-405b-ad3d-a95d8f2bcb6e/4321868b2ac448ca2c28?experience=power-bi

### Aperçu du tableau de bord

<img width="365" height="497" alt="Olist analysis dashboard" src="https://github.com/user-attachments/assets/d62b49d5-8b97-4eb6-b145-3b45719da020" />


Le tableau de bord contient :

- Le nombre total de commandes
- Le taux de livraison à temps
- Le taux de livraison en retard
- Le délai moyen de livraison
- L'évolution du taux de retard dans le temps
- La satisfaction des clients selon le statut de livraison
- La répartition des commandes par État
- Les 10 États avec les délais moyens de livraison les plus longs

---

## Principaux résultats

### 1. La majorité des commandes livrées arrivent à temps

Le taux global de livraison à temps est d'environ 91,89 %, contre 8,11 % de livraisons en retard.

Cela montre que la majorité des commandes sont livrées avant ou à la date prévue.

### 2. Le taux de retard varie dans le temps

Le taux de livraison en retard n'est pas constant pendant toute la période analysée.

Certains mois présentent des taux de retard plus élevés que d'autres, ce qui montre que la performance des livraisons peut varier selon la période.

Septembre 2016 affiche un taux de retard de 100 %, mais ce mois contient très peu de commandes. Ce résultat ne doit donc pas être interprété comme une représentation normale de la performance des livraisons d'Olist.

### 3. La performance des livraisons est fortement liée à la satisfaction des clients

Les commandes livrées à temps ont une note moyenne d'environ 4,29 sur 5.

Les commandes en retard ont une note moyenne beaucoup plus faible, soit environ 2,57.

Les commandes classées comme non livrées ont une note moyenne encore plus faible, soit environ 1,76.

Cela suggère que la performance des livraisons est fortement liée à la satisfaction des clients.

### 4. La performance varie selon les États brésiliens

L'analyse géographique montre que le volume de commandes et la performance des livraisons ne sont pas identiques dans tous les États.

Certains États ont des délais moyens de livraison beaucoup plus élevés que la moyenne globale de 12,50 jours.

### 5. Certains États ont des délais particulièrement élevés

Les États avec les délais moyens de livraison les plus élevés comprennent :

| État | Délai moyen de livraison |
| --- | ---: |
| RR | 29,3 jours |
| AP | 27,2 jours |
| AM | 26,4 jours |
| AL | 24,5 jours |
| PA | 23,7 jours |

Ces résultats montrent qu'il existe des différences géographiques importantes dans la performance des livraisons.

---

## Recommandations

À partir des résultats de l'analyse, je proposerais les actions suivantes :

1. Porter une attention particulière aux États ayant les délais moyens de livraison les plus élevés.

2. Analyser les raisons derrière les périodes où le taux de retard augmente.

3. Suivre régulièrement la performance des livraisons avec des KPI comme le taux de retard et le délai moyen de livraison.

4. Prioriser la réduction des retards puisque les commandes en retard sont associées à des notes clients beaucoup plus faibles.

5. Prendre en compte les différences entre les États lors de l'évaluation de la performance logistique plutôt que de regarder uniquement la moyenne nationale.

---

## Compétences démontrées

Ce projet m'a permis de pratiquer et de démontrer plusieurs compétences techniques et analytiques :

- SQL
- SQL Server
- Exploration des données
- Nettoyage des données
- Modélisation des données
- Relations entre les tables
- Jointures SQL
- Power BI
- Power Query
- DAX
- Création de KPI
- Visualisation de données
- Analyse géographique
- Analyse d'affaires
- Résolution de problèmes
- Interprétation des données
- Communication des résultats

---

## Ce que j'ai appris

Ce projet m'a permis de mieux comprendre comment l'analyse de données peut être utilisée pour évaluer la performance logistique.

Un des principaux apprentissages est qu'un KPI global ne raconte pas toujours toute l'histoire. Olist présente un taux global élevé de livraisons à temps, mais l'analyse par mois et par État montre des différences importantes.

J'ai également mieux compris le lien entre la performance des livraisons et la satisfaction des clients. La différence entre les notes des commandes livrées à temps et celles des commandes en retard montre pourquoi la logistique est importante non seulement pour les opérations, mais aussi pour l'expérience client.

Finalement, ce projet m'a permis de pratiquer davantage l'utilisation de SQL Server et Power BI ensemble dans un projet complet d'analyse de données.
