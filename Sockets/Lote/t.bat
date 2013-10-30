@echo off
goto %1 %2

:s
git status
goto fim

:in
git add %2
goto fim

:lo
git branch
goto fim

:ir
git checkout %2
goto fim

:co
git commit -m %2
goto fim

:up
git push origin %2
goto fim

:fim
