import pandas as pd

df = pd.read_csv("data/sales.csv")

# Clean customer names
df["customer"] = df["customer"].str.strip()

# Handle missing quantity
df["quantity"] = pd.to_numeric(df["quantity"], errors="coerce").fillna(1)

# Convert price to numeric
df["price"] = pd.to_numeric(df["price"], errors="coerce")

# Remove duplicate rows
df = df.drop_duplicates()

# Check data types
print(df.dtypes)

# Create total amount
df["total_amount"] = df["quantity"] * df["price"]

# Save cleaned data
df.to_csv("data/clean_sales.csv", index=False)

print(df.info())

print(df.isnull().sum())

print(df)