@echo off

title WGET

set "wget=%portable%\WGET\wget.exe"
REM set "downloaddir=D:\Comics\!Ongoing - Webcomics\! Wget\"
set "downloaddir=."
set /p "referer=Referer URL: "
set /p "inputfile=Input text file (without .txt suffix): "

echo.

REM %wget% --continue --directory-prefix="%downloaddir%\%inputfile%" --force-directories --input-file="%downloaddir%\%inputfile%.txt" --no-host-directories --timestamping

REM %wget% --auth-no-challenge --continue --directory-prefix="%downloaddir%\%inputfile%" --force-directories --input-file="%downloaddir%\%inputfile%.txt" --keep-session-cookies --no-check-certificate --no-cookies --no-host-directories --span-hosts --timestamping --user-agent="Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)"

%wget% --cookies=on --keep-session-cookies --save-cookies=cookie.txt %referer%
%wget% --referer=%referer% --cookies=on --load-cookies=cookie.txt --keep-session-cookies --save-cookies=cookie.txt --auth-no-challenge --continue --directory-prefix="%downloaddir%\%inputfile%" --input-file="%downloaddir%\%inputfile%.txt" --no-check-certificate  --no-host-directories --span-hosts --timestamping --user-agent="Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)"

del cookie.txt

echo.

pause
