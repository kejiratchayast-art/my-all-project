import pandas as pd

df = pd.read_csv("data/sales.csv")

df.to_csv("data/clean_sales.csv", index=False)

print(f"Extracted {len(df)} rows")