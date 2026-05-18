from pathlib import Path
import pandas as pd

INPUT_PATH = Path("data", "raw", "input.csv")

df = pd.read_csv(INPUT_PATH)
