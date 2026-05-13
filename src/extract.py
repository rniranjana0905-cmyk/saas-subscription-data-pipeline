import pandas as pd

def extract_data():
    df = pd.read_csv("data/ravenstack_subscriptions.csv")
    print(df.head())
    return df