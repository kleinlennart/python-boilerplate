from pathlib import Path
import pandas as pd

INPUT_PATH = Path("data", "raw", "input.csv")
OUTPUT_PATH = Path("data", "raw", "output.parquet")

df = pd.read_csv(INPUT_PATH)

df.to_parquet(OUTPUT_PATH)
