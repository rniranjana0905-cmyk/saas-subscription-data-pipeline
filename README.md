# SaaS Subscription Analytics ETL Pipeline

## Project Overview

Built an end-to-end ETL pipeline using Python and PostgreSQL to process SaaS subscription lifecycle data and generate KPI-driven business insights.

This project simulates a real-world SaaS analytics workflow by extracting subscription data from CSV files, transforming business metrics, and loading cleaned data into a cloud PostgreSQL database hosted on Neon.

---

## Tech Stack

- Python
- Pandas
- PostgreSQL
- SQLAlchemy
- Neon PostgreSQL
- Git & GitHub

---

## Project Architecture

```text
CSV Dataset
    ↓
Extract Layer (extract.py)
    ↓
Transform Layer (transform.py)
    ↓
Load Layer (load.py)
    ↓
Neon PostgreSQL
```

---

## Features Implemented

- Automated CSV data ingestion
- Data cleaning and transformation
- SaaS KPI calculations
- PostgreSQL cloud database integration
- Modular ETL pipeline architecture
- Environment variable configuration using `.env`

---

## SaaS KPIs Analyzed

- Monthly Recurring Revenue (MRR)
- Annual Recurring Revenue (ARR)
- Churn Tracking
- Upgrade/Downgrade Analysis
- Trial Subscription Monitoring
- Billing Frequency Insights

---

## Project Structure

```text
saas-subscription-data-pipeline/
│
├── data/
│   └── ravenstack_subscriptions.csv
│
├── src/
│   ├── extract.py
│   ├── transform.py
│   ├── load.py
│   └── main.py
│
├── .gitignore
├── requirements.txt
└── README.md
```

---

## How to Run the Project

### 1. Clone Repository

```bash
git clone https://github.com/rniranjana0905-cmyk/saas-subscription-data-pipeline.git
```

### 2. Create Virtual Environment

```bash
python -m venv venv
```

### 3. Activate Environment

Windows:

```bash
venv\Scripts\activate
```

### 4. Install Dependencies

```bash
pip install -r requirements.txt
```

### 5. Configure Environment Variables

Create a `.env` file:

```text
DATABASE_URL=your_neon_postgresql_connection_string
```

### 6. Run Pipeline

```bash
python src/main.py
```

---

## Future Improvements

- Apache Airflow orchestration
- Docker containerization
- Spark-based transformations
- AWS deployment
- Power BI dashboard integration

---

## Author

Niranjana R

