<p align="center">
  <img width="800" height="420" alt="image" src="https://github.com/user-attachments/assets/47d08264-97d5-4aed-ba75-e421f02e7d15" />
</p>

# World Database for first steps in SQL
# Summary
- Explored the structure of the World database by inspecting table definitions, primary keys, indexes, and foreign key relationships (e.g. city → country)
- Queried full tables and filtered records using SELECT, WHERE, and primary key lookups
- Used GROUP BY and COUNT to analyse:
- Number of cities per country
- Duplicate city names
- Country-level city counts
- Applied ORDER BY and LIMIT to identify:
- Most and least populous cities
- Most populous countries
- Countries with the highest life expectancy
- Joined tables using INNER JOIN to:
- Link cities to countries via foreign keys
- Identify capital cities
- Analyse cities by continent and country
- Performed aggregate analysis using:
- AVG() to calculate average city population by country
- Subqueries to identify extreme values (e.g. most populous city)
- Population density (people per square kilometre)
<img width="884" height="739" alt="image" src="https://github.com/user-attachments/assets/a4799431-e85f-4da1-b84b-8ef865bf0e65" /> <br> 
- GNP per capita
- Estimated gross city product
- Used window functions (PERCENT_RANK) to rank cities by economic output and compare relative performance <br>
<img width="1608" height="800" alt="image" src="https://github.com/user-attachments/assets/19ee96a1-a7a9-462a-a1ce-70fda9fa18d2" />


---
---

# Video Game Sales Analysis (1980–2016)
# Summary
 - Analysed historical video game sales data from Kaggle to understand market trends
 - Focused on platforms, genres, regions, publishers, and review scores
   
## Dataset
 - Video game sales data up to December 2016
 - Includes: Regional sales (NA, EU, JP, Other), Global sales, Platform, genre, publisher, Critic and user scores

## Analysis Performed

 - Identified top-selling video games globally <br>
   Insight: Global sales are highly concentrated, with a small number of blockbuster titles accounting for a disproportionate share of total market sales.
<img width="888" height="706" alt="image" src="https://github.com/user-attachments/assets/8dbc55cb-5cef-4ce5-9086-58829c674d3a" /> <br>

 - Analysed sales trends by release year <br>
   Insight: Industry-wide sales show clear growth and decline phases over time, reflecting console generation cycles and market saturation in later years.
   <img width="864" height="759" alt="image" src="https://github.com/user-attachments/assets/9251e391-cfb3-4056-ae64-7c452d823b7a" /> <br> 

 - Compared performance of different gaming platforms <br>
   Insight: Platforms exhibit distinct lifecycle patterns, with a few dominant platforms driving most sales while others achieve higher average sales per title despite fewer releases.
   <img width="627" height="779" alt="image" src="https://github.com/user-attachments/assets/a884f80f-dd15-49ce-8b9b-638faa9c0688" /> <br>

 - Explored regional genre preferences (NA, EU, Japan) <br>
   Insight: Player preferences vary significantly by region: action-oriented genres dominate Western markets, while RPGs perform particularly strongly in Japan.

 - Evaluated publisher performance by total and average sales <br>
   Insight: High total sales are often driven by volume, whereas some publishers achieve stronger average performance by releasing fewer but more successful titles.

 - Examined the relationship between review scores and sales <br>
   Insight: Higher critic scores generally correlate with stronger global sales, though high sales can still occur for games with mixed or lower review scores.

 - Identified highly rated games with relatively low sales (“hidden gems”) <br>
   Insight: Several critically acclaimed games achieved limited commercial success, suggesting that quality alone does not guarantee market visibility or sales impact.

   

## Reproducibility

- Dataset stored as a self-contained SQL dump

- Analysis queries saved in a separate, commented SQL file
