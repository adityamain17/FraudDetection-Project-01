Financial Fraud Detection – SecurePay Analytics
Project Overview

This project simulates a real-world financial fraud detection scenario for a credit card provider. The objective is to detect unusual or fraudulent transactions using a hybrid approach:

Excel for data preprocessing and exploration

SQL for structured business insights

Python (Isolation Forest) for anomaly detection

Power BI for interactive dashboards and reporting

This end-to-end pipeline reflects how financial institutions combine data engineering, machine learning, and BI visualization for fraud detection and compliance monitoring.

Dataset & ER Model

Dataset provided in Excel/CSV format

Contains numeric, categorical, and derived features such as:

Numeric: TransactionAmount, CustomerAge, TransactionDuration, LoginAttempts, AccountBalance

Categorical: Occupation (Doctor, Engineer, Retired, Student), Transaction Channels (ATM, Branch, Online, CreditCard, DebitCard)

Derived: Log-scaled transaction amount, transaction time (hour, day, month), days since previous transaction

ER Diagram created for schema clarity and relationship mapping

Tools & Technologies

Excel – initial cleaning, derived features, pivot tables/charts

SQL (MySQL) – transactional queries, business insights, fraud risk indicators

Python (Scikit-learn) – data preprocessing, anomaly detection (Isolation Forest)

Power BI – interactive dashboards for fraud monitoring and reporting

Visualization – Matplotlib, Seaborn, Power BI visuals

Project Workflow
1. Excel – Data Foundation

Dataset loaded and cleaned in Excel

Derived new features such as log-transformed amounts and transaction times

Used pivot tables/charts for initial data exploration

2. SQL – Business Insights

Total transactions: 2,512

Debit usage higher than Credit

ATM transactions had the highest average values

Fort Worth was the busiest transaction location

Doctors held higher account balances, Students contributed the most revenue

High login attempts correlated with high transaction amounts → potential fraud risk

High-value transactions (>1000) flagged, with Portland being an anomaly hotspot

3. Python ML – Isolation Forest

Preprocessed data (scaling, encoding categorical variables)

Trained Isolation Forest with contamination=0.05

Added Anomaly_Flag (1 = Fraud, 0 = Normal) and anomaly scores

Result: ~6% anomalies detected (30/503 test samples)

4. Power BI – Interactive Dashboards

Built dashboards with:

Transaction volume by channel/location

Occupation-wise account balances and spending

Fraud risk by login attempts and transaction amount

High-value anomaly tracking

Provided real-time fraud monitoring capability for decision makers
<img width="1221" height="657" alt="Screenshot 2025-09-29 214737" src="https://github.com/user-attachments/assets/719636d5-3779-44b0-9317-65e820e49d01" />

<img width="1157" height="643" alt="Screenshot 2025-09-29 214756" src="https://github.com/user-attachments/assets/4dc0e884-3d31-4aa9-aa79-cf71f45d263b" />

Key Insights

Students contribute the most transaction volume (revenue), while Doctors hold the highest balances

Fort Worth is the busiest location, but Portland showed suspicious high-value transactions

ATM transactions carry higher average amounts, making them a potential fraud hotspot

Learning Outcomes

Hands-on experience with end-to-end fraud detection pipeline

Integration of Excel, SQL, Python, and Power BI into one workflow

Practical knowledge of unsupervised ML anomaly detection

Business insights generation using SQL and visualization for decision making

Real-world exposure to financial fraud detection and risk monitoring

Project Team
1.Aastha
2.Aditya Bajantri
3.Rajasri
4.Aman Singh
