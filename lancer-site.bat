@echo off
title Biographie Louis Appia - Serveur Web
echo.
echo  ============================================
echo   Biographie de Louis Appia (1818-1898)
echo   par Roger Durand
echo  ============================================
echo.
echo  Demarrage du serveur web...
echo  Le site s'ouvrira dans votre navigateur.
echo.
echo  Pour arreter : fermez cette fenetre.
echo  ============================================
echo.

:: Essayer python, py, python3 dans cet ordre
where python >nul 2>nul
if %errorlevel%==0 (
    start http://localhost:8000/index.html
    python -m http.server 8000
    goto :end
)

where py >nul 2>nul
if %errorlevel%==0 (
    start http://localhost:8000/index.html
    py -m http.server 8000
    goto :end
)

where python3 >nul 2>nul
if %errorlevel%==0 (
    start http://localhost:8000/index.html
    python3 -m http.server 8000
    goto :end
)

echo.
echo  ERREUR : Python n'est pas installe.
echo.
echo  Pour installer Python :
echo    1. Allez sur https://www.python.org/downloads/
echo    2. Telechargez Python 3
echo    3. IMPORTANT : cochez "Add Python to PATH" lors de l'installation
echo    4. Relancez ce fichier
echo.
echo  Alternative sans Python :
echo    - Installez Node.js (https://nodejs.org)
echo    - Puis lancez : npx serve
echo.
pause

:end
