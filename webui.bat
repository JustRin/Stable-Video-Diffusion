@echo off
SETLOCAL EnableDelayedExpansion

:: Установите путь к вашему файлу `requirements.txt`
SET "REQ_FILE=%~dp0requirements.txt"

:: Создаем виртуальное окружение
py -3.10 -m venv venv
call .\venv\Scripts\activate

:: Установка пакетов из файла requirements.txt
echo Installing requirements from %REQ_FILE%
pip install -r "%REQ_FILE%"

:: Проверка наличия ошибок после установки
IF %ERRORLEVEL% NEQ 0 (
    echo There was an error installing the requirements.
    pause
    exit /b %ERRORLEVEL%
)

:: Запуск Streamlit
set PYTHONPATH=.
streamlit run scripts/demo/video_sampling.py --server.port 1234

:: Ожидание нажатия клавиши перед закрытием консоли
pause
