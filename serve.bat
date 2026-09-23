@echo off
REM Avvia il sito in locale su http://localhost:4000 (richiede Docker Desktop avviato)
cd /d "%~dp0"
docker compose up
