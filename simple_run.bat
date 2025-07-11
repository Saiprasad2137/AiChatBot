@echo off
echo ==========================================
echo      Simple AI Interview Prep Bot
echo ==========================================
echo.

echo Choose your preferred version:
echo 1. 🌐 Web Interface (Recommended - No installation needed)
echo 2. 💻 Console Application (Requires C++ compiler)
echo 3. ℹ️  Show Help
echo.
echo Enter your choice (1-3): 
choice /c 123 /n

if errorlevel 3 goto :help
if errorlevel 2 goto :console
if errorlevel 1 goto :web

:web
echo.
echo 🌐 Starting Web Interface...
echo Opening simple_interface.html in your default browser...
echo.
start simple_interface.html
echo ✅ Web interface should now be open in your browser!
echo.
echo 💡 If it didn't open automatically, manually open: simple_interface.html
echo.
goto :end

:console
echo.
echo 💻 Compiling Console Application...
echo.

REM Check for g++ first
where g++ >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Found g++ compiler, compiling...
    g++ -std=c++17 -o simple_prepbot.exe simple_prepbot.cpp
    goto :check_compilation
)

REM Check for cl (Visual Studio)
where cl >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Found Visual Studio compiler, compiling...
    cl /EHsc simple_prepbot.cpp /Fe:simple_prepbot.exe
    goto :check_compilation
)

echo ❌ No C++ compiler found!
echo.
echo Please install one of these options:
echo • MinGW-w64 (recommended): https://www.mingw-w64.org/
echo • Visual Studio Community: https://visualstudio.microsoft.com/
echo.
echo Alternative: Use the web interface instead (option 1)
echo.
pause
goto :end

:check_compilation
if %errorlevel% equ 0 (
    echo ✅ Compilation successful!
    echo.
    echo 🚀 Starting Simple AI Interview Prep Bot...
    echo.
    simple_prepbot.exe
) else (
    echo ❌ Compilation failed!
    echo.
    echo 💡 Try the web interface instead (run this script and choose option 1)
    echo.
    pause
)
goto :end

:help
echo.
echo 📚 SIMPLE AI INTERVIEW PREP BOT - HELP
echo =======================================
echo.
echo This tool helps you learn basic DSA concepts with:
echo.
echo 🎯 Features:
echo   • 15 basic DSA questions (Arrays, Strings, Search, Sort)
echo   • Easy and Medium difficulty levels
echo   • Simple explanations and hints
echo   • Progress tracking
echo   • Interactive chat helper
echo.
echo 🌐 Web Interface (Option 1):
echo   • Works in any modern browser
echo   • No installation required
echo   • All features available
echo   • Saves progress locally
echo.
echo 💻 Console Application (Option 2):
echo   • Full C++ experience
echo   • Requires C++ compiler
echo   • Text-based interface
echo   • Advanced features
echo.
echo 📖 Learning Path:
echo   1. Start with Arrays (Find Max, Sum, Reverse)
echo   2. Try Strings (Count Vowels, Palindrome)
echo   3. Learn Search (Linear, Binary)
echo   4. Practice Sort (Bubble, Selection)
echo.
echo 💡 Tips:
echo   • Start with Easy questions
echo   • Practice daily (even 15 minutes helps)
echo   • Use hints when stuck
echo   • Review solved questions
echo.
echo Press any key to continue...
pause >nul
goto :start

:start
cls
goto :begin

:begin
echo ==========================================
echo      Simple AI Interview Prep Bot
echo ==========================================
echo.

echo Choose your preferred version:
echo 1. 🌐 Web Interface (Recommended - No installation needed)
echo 2. 💻 Console Application (Requires C++ compiler)
echo 3. ℹ️  Show Help
echo.
echo Enter your choice (1-3): 
choice /c 123 /n

if errorlevel 3 goto :help
if errorlevel 2 goto :console
if errorlevel 1 goto :web

:end
echo.
echo 🎉 Thank you for using Simple AI Interview Prep Bot!
echo 📚 Keep practicing and you'll master DSA fundamentals!
echo.
echo 💡 Quick Tips:
echo   • Practice a little every day
echo   • Start with easy questions
echo   • Don't rush - understanding is key
echo   • Use the chat helper when stuck
echo.
pause
