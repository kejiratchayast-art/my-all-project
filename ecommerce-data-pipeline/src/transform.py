import pandas as pd

df = pd.read_csv("data/sales.csv")

# Clean customer names
df["customer"] = df["customer"].str.strip()

# Convert numeric columns
df["quantity"] = pd.to_numeric(df["quantity"], errors="coerce").fillna(1)
df["price"] = pd.to_numeric(df["price"], errors="coerce")

# Remove duplicates
df = df.drop_duplicates()

# Create total amount
df["total_amount"] = df["quantity"] * df["price"]

# Save cleaned data
df.to_csv("data/clean_sales.csv", index=False)

print("Transformation completed!")
print(df)