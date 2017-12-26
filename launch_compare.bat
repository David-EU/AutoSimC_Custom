@echo off
where /q python.exe
IF ERRORLEVEL 1 (
   ECHO Python.exe is missing. Ensure it is installed.
   pause
) ELSE (
    ECHO Python.exe exists. Launching AutoSimC!
    ECHO --If you get the message: "cant open file "main.py" [Errno2].."
    ECHO --Please add Python-Path to your Systemvariables-Path-Variable
    Echo --https://i.imgur.com/KM132c7.png
   REM python.exe main.py -i input.txt -o out.simc -sim all
   REM python.exe main_compare.py -i input_compare.txt -o out_compare.simc -quiet -sim stage1
   python.exe main_compare.py -i input_compare.txt -o out_compare.simc -quiet -sim all
   pause
   REM start results\file.html....
)

REM For legendary permutations in command line, use this command :
REM python main.py -i settings.ini -o out.simc -l "leg1|id|bonus|enchant|gem,leg2|id2|bonus2|enchant2|gem2" 0:2
