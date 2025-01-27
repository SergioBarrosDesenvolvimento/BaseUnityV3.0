@REM @echo off

@REM echo ===---------[BASE UNITY]---------===
@REM echo     Base Vrpex (final version)
@REM echo     Bugs Fixed Version: 3.0.1
@REM echo     Developed by: Unity Dev 
@REM echo     Discord: discord.gg/kYFy8JwVfd
@REM echo ===---------------------------------===

@REM pause
start ..\artifacts\FXServer.exe +exec config/config.cfg +set onesync_enableInfinity 0 +set onesync on +set sv_enforceGameBuild 3258
exit

