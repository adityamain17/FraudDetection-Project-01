💳 Financial Fraud Detection – SecurePay Analytics
📌 Project Overview

This project simulates a real-world financial fraud detection scenario for a credit card provider.
The objective is to detect unusual or fraudulent transactions using a hybrid approach:

Excel – Data preprocessing & exploration

SQL – Structured business insights

Python (Isolation Forest) – Anomaly detection

Power BI – Interactive dashboards & reporting

👉 This end-to-end pipeline demonstrates how financial institutions combine data engineering, machine learning, and BI visualization for fraud detection & compliance monitoring.

🗂️ Dataset & ER Model

Dataset: Provided in Excel/CSV format

Features:

Numeric: TransactionAmount, CustomerAge, TransactionDuration, LoginAttempts, AccountBalance

Categorical: Occupation (Doctor, Engineer, Retired, Student), Transaction Channels (ATM, Branch, Online, CreditCard, DebitCard)

Derived: Log-scaled transaction amount, transaction time (hour, day, month), days since previous transaction

ER Diagram created for schema clarity & relationship mapping

🛠️ Tools & Technologies

Excel → Cleaning, derived features, pivot tables & charts

SQL (MySQL) → Transactional queries, business insights, fraud risk indicators

Python (Scikit-learn) → Preprocessing, anomaly detection (Isolation Forest)

Power BI → Dashboards for fraud monitoring & reporting

Visualization → Matplotlib, Seaborn, Power BI visuals

🔄 Project Workflow
1️⃣ Excel – Data Foundation

Loaded & cleaned dataset

Derived new features (log-transformed amounts, transaction times)

Pivot tables & charts for initial exploration

2️⃣ SQL – Business Insights

Total transactions: 2,512

Debit usage higher than Credit usage

ATM transactions had the highest average values

Fort Worth → busiest transaction location

Doctors held higher balances | Students contributed the most revenue

High login attempts correlated with high transaction amounts → potential fraud risk

High-value transactions (>1000) flagged; Portland = anomaly hotspot

3️⃣ Python ML – Isolation Forest

Preprocessed data (scaling, encoding categorical variables)

Trained Isolation Forest (contamination=0.05)

Added Anomaly_Flag (1 = Fraud, 0 = Normal) + anomaly scores

Result: ~6% anomalies detected (30/503 test samples)

4️⃣ Power BI – Interactive Dashboards

Transaction volume by channel & location

Occupation-wise account balances & spending

Fraud risk by login attempts & transaction amount

High-value anomaly tracking

Real-time monitoring for decision makers

📷 Dashboards:
<img width="1221" height="657" alt="Dashboard 1" src="https://github.com/user-attachments/assets/719636d5-3779-44b0-9317-65e820e49d01" />
<img width="1157" height="643" alt="Dashboard 2" src="https://github.com/user-attachments/assets/4dc0e884-3d31-4aa9-aa79-cf71f45d263b" />

🔑 Key Insights

Students contribute the most transaction volume (revenue)

Doctors hold the highest balances

Fort Worth is the busiest location

Portland showed suspicious high-value transactions

ATM transactions carry higher average amounts → fraud hotspot

🎯 Learning Outcomes

Hands-on experience with an end-to-end fraud detection pipeline

Integration of Excel, SQL, Python, and Power BI into one workflow

Practical knowledge of unsupervised ML anomaly detection

Business insights generation using SQL & visualization

Real-world exposure to financial fraud detection & risk monitoring

👥 Project Team

Aastha

Aditya Bajantri

Rajasri

Aman Singh
