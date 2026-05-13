from sqlalchemy import create_engine
from dotenv import load_dotenv
import pandas as pd
import os

load_dotenv()

def load_data(df):

    DATABASE_URL = os.getenv("DATABASE_URL")

    engine = create_engine(DATABASE_URL)

    df.to_sql(
        "subscriptions",
        engine,
        if_exists="replace",
        index=False
    )

    print("Data loaded into Neon PostgreSQL successfully!")