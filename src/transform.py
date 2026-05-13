import pandas as pd
def transform_data(df):

    # remove nulls
    df = df.dropna()

    # convert date column
    df['start_date'] = pd.to_datetime(df['start_date'])

    # standardize status
    df['plan_tier'] = df['plan_tier'].str.lower()

    return df