@echo off
SETLOCAL EnableDelayedExpansion

:: Создаем виртуальное окружение
py -3.10 -m venv venv
call .\venv\Scripts\activate

:: Установка пакетов из requirements.txt
SET REQ_FILE=%~dp0requirements.txt

FOR /F "tokens=*" %%i IN (%REQ_FILE%) DO (
    SET PACKAGE=%%i
    FOR /F "delims== " %%p IN ("!PACKAGE!") DO (
        SET PACKAGE_NAME=%%p
        pip show !PACKAGE_NAME! >nul 2>&1
        IF NOT !ERRORLEVEL! == 0 (
            echo Install !PACKAGE_NAME!
            pip install !PACKAGE!
        ) ELSE (
            echo !PACKAGE_NAME! already install.
        )
    )
)

:: Запуск Streamlit
set PYTHONPATH=.
streamlit run scripts/demo/video_sampling.py --server.port 1234

:: Ожидание нажатия клавиши перед закрытием консоли
pause
