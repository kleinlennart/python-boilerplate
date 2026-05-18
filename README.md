# python-boilerplate

## Dev

First setup:

```shell
curl -LsSf https://astral.sh/uv/install.sh | sh
uv sync

cp .env.example .env
```

Make sure the `.venv` interpreter is correctly selected.
Command Pallette: **>Python: Select Interpreter** -- `python.defaultInterpreterPath`

```shell
uv add <package>
uv run python src/script.py
```

## Mainternance

```shell
uvx ruff check --select I --fix src/
uvx ruff format src/

uv add --upgrade <package>
uv lock --upgrade
```

## Data

```shell
data/
├── raw/        # original source data, never edited
├── input/      # curated inputs used by analysis/modeling
├── processed/  # cleaned/intermediate datasets
└── output/     # final data outputs
```
