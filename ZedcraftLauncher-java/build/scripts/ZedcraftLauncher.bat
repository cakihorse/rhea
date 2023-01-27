@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  ZedcraftLauncher startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and ZEDCRAFT_LAUNCHER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\ZedcraftLauncher-1.0.0.jar;%APP_HOME%\lib\openauth-1.1.4.jar;%APP_HOME%\lib\fontawesomefx-fontawesome-4.7.0-9.1.2.jar;%APP_HOME%\lib\flowupdater-1.5.3.jar;%APP_HOME%\lib\openlauncherlib-3.2.5.jar;%APP_HOME%\lib\FX-BorderlessScene-4.4.0.jar;%APP_HOME%\lib\oshi-core-5.8.7.jar;%APP_HOME%\lib\javafx-web-13-win.jar;%APP_HOME%\lib\javafx-media-13-win.jar;%APP_HOME%\lib\javafx-media-13.jar;%APP_HOME%\lib\javafx-fxml-13-win.jar;%APP_HOME%\lib\javafx-controls-13-win.jar;%APP_HOME%\lib\javafx-controls-13.jar;%APP_HOME%\lib\javafx-swing-13-win.jar;%APP_HOME%\lib\javafx-graphics-13-win.jar;%APP_HOME%\lib\javafx-graphics-13.jar;%APP_HOME%\lib\javafx-base-13-win.jar;%APP_HOME%\lib\javafx-base-13.jar;%APP_HOME%\lib\gson-2.9.1.jar;%APP_HOME%\lib\fontawesomefx-commons-9.1.2.jar;%APP_HOME%\lib\flowmultitools-1.4.0.jar;%APP_HOME%\lib\annotations-22.0.0.jar;%APP_HOME%\lib\json-20220320.jar;%APP_HOME%\lib\jna-platform-5.10.0.jar;%APP_HOME%\lib\jna-5.10.0.jar;%APP_HOME%\lib\slf4j-api-1.7.32.jar;%APP_HOME%\lib\commons-compress-1.21.jar


@rem Execute ZedcraftLauncher
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %ZEDCRAFT_LAUNCHER_OPTS%  -classpath "%CLASSPATH%" eu.cakihorse.launcher.Main %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable ZEDCRAFT_LAUNCHER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%ZEDCRAFT_LAUNCHER_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
