@echo off
echo Installing required Python packages...
pip install -r requirements.txt

echo.
echo Starting Resume Parser Application...
python resume_parser.py

pause
