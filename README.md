# Ćwiczenie: Dobre repozytorium i narzędzia

Krótki README przygotowany na potrzeby ćwiczenia.

## Quick start

1. Utwórz i aktywuj środowisko (PowerShell):

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
```

2. Uruchom formatowanie i sprawdź:

```powershell
# format
python -m black .
# check format
bash scripts/format_check.sh
# lint
bash scripts/lint.sh
# test
bash scripts/test.sh
```

## CI
Workflow CI znajduje się w `.github/workflows/ci.yml` i uruchamia format_check, lint i testy.

## Definicja ukończenia
- Projekt uruchamia się lokalnie.
- Lint i testy przechodzą lokalnie.
- Workflow CI przechodzi dla PR.
