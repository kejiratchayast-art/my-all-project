import pandas as pd 
import snowflake.connector
from snowflake.connector.pandas_tools import write_pandas

#Read clean data
df = pd.read_csv("data/clean_sales.csv")

#Connect quantity to integer
df["quantity"] = df["quantity"].astype(int)

# Connect to Snowflake
conn = snowflake.connector.connect(
    account="JEXHDHF-HM03224",
    user="JIRATCHAYA",
    authenticator="OAUTH_AUTHORIZATION_CODE",
    warehouse="COMPUTE_WH",
    database="ECOMMERCE_DB",
    schema="RAW",
    role="ACCOUNTADMIN"
)

print("Connected to Snowflake!")

# Create table
cursor = conn.cursor()

cursor.execute("""
CREATE TABLE IF NOT EXISTS SALES (
    ORDER_ID INTEGER,
    CUSTOMER VARCHAR,
    PRODUCT VARCHAR,
    QUANTITY INTEGER,
    PRICE FLOAT,
    TOTAL_AMOUNT FLOAT
)
""")

# Load data
success, nchunks, nrows, _ = write_pandas(
    conn,
    df,
    "SALES",
    schema="RAW",
    auto_create_table=False,
    quote_identifiers=False
)

print(f"Load completed: {nrows} rows")

cursor.close()
conn.close()

print("Connection closed.")