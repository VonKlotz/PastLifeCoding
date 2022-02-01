@rem -- begin runexcel.bat --
@echo off
if not .%2. == .. set PARAM1=%2
if not .%3. == .. set PARAM2=%3
start excel %1
@rem --- end runexcel.bat ---