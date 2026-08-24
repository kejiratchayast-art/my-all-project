import pandas as pd

df = pd.read_csv("data/sales.csv")

# Clean customer names
df["customer"] = df["customer"].str.strip()

#Handle missing quantity
df['quantity'] = pd.to_numeric(
df['quantity'], 
errors='coerce'
).fillna(1)

#Convert price to numeric
df['price'] = pd.to_numeric(
    df['price'],
    errors='coerce'
)

#Remove duplicate rows
df = df.drop_duplicates()

#Create total amount
df["total_amount"] = df["quantity"] * df["price"]

#Save transformed data
df.to_csv("data/clean_sales.csv", index=False)

print(f"Transformed {len(df)} rows")