@echo on
@prompt $S

git status

@choice /C SN /M "Subir atualiza��o" /T 20 /D N
@if errorlevel 2 goto fim

git add .
git commit -m "Atualiza��o"
git push
git status

@echo.
@pause

:fim
@prompt $P$G$S
