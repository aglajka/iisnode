@echo off
echo //
echo // This file was autogenerated in a pre-build step of iisnode by ..\scripts\genDebugRc.bat
echo //
set findStr=%~p0
call set findStr=%%findStr:\src\iisnode\scripts\=\src\iisnode\node-inspector\%%
for /F "tokens=*" %%i in ('dir /s /b /a-d %~dp0\..\node-inspector') do call :processOne %%~pnxi %findStr%
exit /b 0

:processOne

set line=%1
call set line=%%line:%2=%%
call set file=%%line:\=\\%%
echo %line% DEBUGGERFILE ^"node-inspector\\%file%^"