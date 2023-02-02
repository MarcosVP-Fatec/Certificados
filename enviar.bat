@echo on
@prompt $G$S

git status
echo %errorlevel%

@choice /C SN /M "Subir atualização" /T 2 /D N
echo %errorlevel%
@if errorlevel 2 goto fim

git add .
git commit -m "Atualização"
git push
git status

:fim
@@prompt $P$G$S
