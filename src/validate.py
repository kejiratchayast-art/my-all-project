import pandas as pd

df = pd.read_csv("data/clean_sales.csv")

print("=== DATA VALIDATION ===")

#ROW COUNT
print(f"Row count: {len(df)}")

#missing values
print("\nMissing values:")
print(df.isnull().sum())

# Duplicate rows
print(f"\nDuplicate rows: {df.duplicated().sum()}")

# Invalid quantity
print(f"Invalid quantity: {(df['quantity'] <= 0).sum()}")

# Invalid price
print(f"Invalid price: {(df['price'] < 0).sum()}")

# Overall validation
if (
    df.isnull().sum().sum() == 0
    and df.duplicated().sum() == 0
    and (df["quantity"] <= 0).sum() == 0
    and (df["price"] < 0).sum() == 0
):
    print("\nVALIDATION: PASS")
else:
    print("\nVALIDATION: FAIL")