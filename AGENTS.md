# AGENTS.md

This file provides guidance to coding agents when working with code in this repository.

## Setup

```shell
uv sync
cp .env.example .env
```

## Commands

```shell
uv add <package>                                # add a dependency
uv run python src/your_project_name/main.py     # run a script
uv run pytest                                   # run tests
uv run pytest tests/test_foo.py::test_bar       # run a single test
```

## Architecture

This is a data analysis boilerplate. Source code lives in `src/your_project_name/` (importable as a package); Jupyter notebooks go in `notebooks/`; plots go in `plots/`.

Data directory convention:

- `data/raw/` — original source data, never modified
- `data/input/` — curated inputs for analysis
- `data/processed/` — cleaned/intermediate datasets
- `data/output/` — final outputs

The `src/` layout means scripts must be run via `uv run` (or with the `.venv` activated) so the package is on the path. VS Code is configured to use `.venv/bin/python` and add `src` to `python.analysis.extraPaths`.

Environment variables are loaded from `.env` via `python-dotenv`.

## Style

- Use `uv run python` to execute scripts, never bare `python`
- Prefer concise, DRY, imperative code
- Avoid wrapping everything in `print` statements
- Use `context7` MCP tool for up-to-date package/API documentation
- use `pathlib` for file paths
- think about best practice libraries to use instead of reinventing the wheel
