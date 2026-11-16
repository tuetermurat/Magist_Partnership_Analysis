📊 Magist Partnership Analysis: Strategic Evaluation for Eniac

📋 Executive Summary

Eniac, a European online marketplace specializing in high-end Apple-compatible tech accessories, is considering expanding into the Brazilian market by partnering with Magist, a local SaaS fulfillment and post-sale service provider.

Using MySQL for exploratory data analysis across 25 months of marketplace data and Tableau for executive storytelling, we evaluated two core business questions:

Market Fit: Is Magist a strong channel for Eniac’s premium, high-priced tech products?

Operational Reliability: Are Magist’s delivery times fast and reliable enough to protect Eniac’s brand reputation?

🎯 Final Recommendation: Hold & Reassess in 6 Months

We advise against signing an immediate partnership. While Magist demonstrates strong overall e-commerce volume, its customer base skews heavily toward low-cost, non-tech goods, tech order volume has stagnated since late 2017, and delayed deliveries experience severe transit bottlenecks.

🔍 Key Findings & Data Insights

1. Product Portfolio & Market Fit

Small Tech Footprint: Out of 74 product categories and 112,650 total items sold, only 15.03% (16,935 items) fall under tech categories (computers_accessories, telephony, electronics, audio, consoles_games, tablets_printing_image, computers, and pc_gamer).

Revenue Disparity: Out of €13.59M in total platform revenue, tech products generated €1.84M (~14%), whereas non-tech categories drove 86% of sales.

Price Sensitivity: The platform-wide average item price is €120.65. High-volume tech sales are concentrated in affordable items like Computer Accessories (7,827 units) and Telephony (4,545 units), while high-ticket hardware like Computers (203 units) and PC Gamer (9 units) barely move. This presents a major market-fit risk for Eniac's premium product line.

2. Seller Ecosystem & Growth Trends

Seller Distribution: Of 2,095 active sellers, 477 (~15.4%) sell tech products, generating an average seller income of €4,391.48 across the dataset.

Post-2017 Stagnation: While overall sellers and total orders grew steadily through 2017, tech order volume dropped sharply after December 2017 without visible recovery—even as the number of tech sellers continued rising. This creates an unhealthy supply-to-demand imbalance and heightened seller competition.

3. Delivery & Fulfillment Performance

Overall Delivery Metrics: Across 96,475 completed orders, the average delivery time from purchase to customer receipt is 12 days, with 92% delivered on time and 8% (7,827 orders) delayed.

Severe Delay Bottlenecks: When delays occur, they are substantial rather than marginal:

Seller-to-Carrier Handoff: Delayed orders take nearly 3 additional days on average to reach the postal service.

Last-Mile Carrier Transit: Once handed over to the carrier, delayed shipments average ~28 days in transit to reach the customer.

Geographic Concentration: 62% of all delivery delays occur in just 3 states, pointing to localized logistics bottlenecks.

🛠️ Methodology & Tech Stack

Database & Querying (MySQL):

Joined transactional tables (orders, order_items, products, sellers, and product_category_name_translation).

Engineered custom category groupings (Tech vs. Non-Tech and Super Categories) and price-tier segmentations (Expensive vs. Not Expensive relative to the €120.65 mean) using CTEs and CASE statements.

Decomposed fulfillment lead times into three stages: Purchase → Approval, Approval → Carrier Handoff, and Carrier → Customer Delivery.

Visualization & Presentation (Tableau & Slides):

Built interactive dashboards comparing revenue shares, seller-to-order growth trajectories, and regional delay distributions.

📂 Repository Structure

Magist_Partnership_Analysis/
│
├── Magist Analysis.sql                 # Full MySQL script covering product, seller, and delivery analysis
├── Eniac - Magist Partnership.pdf/.pptx # Executive presentation deck with Tableau visualizations
└── README.md                           # Project documentation and strategic summary


🚀 Strategic Next Steps for Magist (6-Month Review Criteria)

Before reconsidering a partnership in 6 months, Eniac should look for:

Targeted Tech Marketing: Evidence of Magist actively investing in attracting high-intent, premium tech buyers to balance seller growth.

Carrier SLA Improvements: Reduction in last-mile transit delays within the top 3 bottleneck states.

High-Ticket Traction: Measurable growth in average order value (AOV) within core computing and electronics categories.
