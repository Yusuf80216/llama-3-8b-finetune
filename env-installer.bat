@echo off

REM Define the name of your virtual environment folder
SET VENV_FOLDER=venv

REM Create a new virtual environment
virtualenv -p python3.11 %VENV_FOLDER%
echo Created new virtual environment: %VENV_FOLDER%

REM Activate the virtual environment
CALL %VENV_FOLDER%\Scripts\activate

REM Install libraries
!pip install -q -U bitsandbytes
!pip install -q -U transformers
!pip install -q -U peft
!pip install -q -U accelerate
!pip install -q -U datasets
!pip install -q -U trl
!pip install -q pdfplumber
!pip install -q gdown
!pip install -q decouple

echo Installed PyTorch and related libraries

REM Deactivate the virtual environment
deactivate

echo Setup complete!
pause
