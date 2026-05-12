# saas-subscription-data-pipeline
IDEA: Build a pipeline that processes:

customer subscriptions
invoices
payments
churned users
monthly revenue

Then generate analytics tables.
------------------------------------------------
Skill->	Used
Python->	ETL
Pandas-> cleaning
SQL->	analytics
PostgreSQL->	warehouse
APIs/CSV->	ingestion
Airflow concepts->	orchestration
Business KPIs->	SaaS metrics
-------------------------------------------------
ARCHITECTURE

Raw CSV/API Data
       ↓
Python ETL
       ↓
Data Cleaning
       ↓
PostgreSQL Tables
       ↓
Analytics SQL Queries
       ↓
Dashboard / Reports

---------------------------------------------------
FOLDER STRUCTURE

saas-data-pipeline/
│
├── data/
├── notebooks/
├── sql/
├── src/
│   ├── extract.py
│   ├── transform.py
│   ├── load.py
│
├── dags/
│   └── subscription_etl_dag.py
│
├── requirements.txt
├── README.md
└── .env

-----------------------------------------------------
After loading csv and completing the ETL process ... its time to do cloud postgresql loading 
