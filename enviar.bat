@echo on
@prompt $G$S

git status
echo %errorlevel%

@choice /C SN /M "Subir atualiza��o" /T 2 /D N
echo %errorlevel%
@if errorlevel 2 goto fim

git add .
git commit -m "Atualiza��o"
git push
git status

:fim
@@prompt $P$G$S
