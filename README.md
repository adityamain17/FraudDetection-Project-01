# Financial Fraud Detection – SecurePay Analytics

## Project Overview
This project simulates a real-world financial fraud detection scenario for a credit card provider. The goal is to detect unusual or fraudulent transactions using unsupervised machine learning techniques, primarily **Isolation Forest**, along with exploratory data analysis and visualization.

As part of the Data Risk & Compliance team, the project demonstrates the end-to-end workflow from data cleaning and preprocessing to model implementation, anomaly detection, and insights reporting.

---

## Dataset
The dataset contains anonymized credit card transaction data with the following feature types:

- **Numeric Features:** TransactionAmount, CustomerAge, TransactionDuration, LoginAttempts, AccountBalance, PCA components, etc.
- **Categorical Features:** Encoded user types (Doctor, Engineer, Retired, Student), transaction channels (Atm, Branch, Online, CreditCard, DebitCard)
- **Derived Features:** Log_TransactionAmount, Transaction Hour/Day/Month/Weekday, Days Since Previous Transaction

---

## Tools & Technologies
- **Python:** Pandas, NumPy, Scikit-learn (data cleaning, preprocessing, ML modeling)
- **Machine Learning:** Isolation Forest for anomaly detection
- **Visualization:** Matplotlib, Seaborn (scatter plots, boxplots, heatmaps)
- **Jupyter / Google Colab:** For code execution and documentation

--

## Project Workflow

### 1. Data Understanding
- Loaded and explored the dataset.
- Identified numeric, categorical, and derived features.

### 2. Data Cleaning & Preprocessing
- Scaled numeric features using `StandardScaler`.
- Handled encoding of categorical variables.
- Ensured the dataset had no missing or duplicate values.

### 3. Exploratory Data Analysis (EDA)
- Scatter plots of `TransactionAmount` vs `CustomerAge`.
- Boxplots of `TransactionAmount` across categorical features.
- Identified patterns and potential anomalies visually.

### 4. Machine Learning – Isolation Forest
- Trained **Isolation Forest** on the training set with `contamination=0.05`.
- Predicted anomalies on the test set.
- Added `Anomaly_Flag` (1 = Fraud, 0 = Normal) and `Anomaly_Score` for ranking suspicious transactions.
- **Results:** 30 anomalies detected in 503 test samples (~6%).

### 5. Visualization & Insights
- Scatter plots of `TransactionAmount` vs `Anomaly Score` highlighted fraudulent transactions.
- Heatmaps showed deviations in numeric features for anomalies.
- Boxplots indicated anomalies clustered in certain user types and transaction channels.

---

## Learning Outcomes
- Practical implementation of **unsupervised ML techniques** for fraud detection.
- Experience in **data preprocessing, scaling, and anomaly detection**.
- Data visualization skills for interpreting and presenting anomalies.
- Understanding real-world fraud patterns and designing actionable insights.
