# python-boilerplate

## Dev

First setup:

```shell
curl -LsSf https://astral.sh/uv/install.sh | sh

uv sync
cp .env.example .env
```

Use:

```shell
uv add <package>
uv add --upgrade <package>
uv lock --upgrade
```

## Mainternance

```shell
uvx ruff check --select I --fix src/
uvx ruff format src/
```

## Data

```shell
data/
├── raw/        # original source data, never edited
├── input/      # curated inputs used by analysis/modeling
├── processed/  # cleaned/intermediate datasets
└── output/     # final data outputs
```
