@echo off
echo Deleting backup files from the repository...

REM List of backup files to delete
set FILES=README-bk-6.3.25-11.45.md install-bk-6.3.25-11.45.bat install-bk-6.3.25-11.45.sh install-bk-6.3.25-12.00.bat install-bk-6.3.25-12.00.sh install-bk-6.3.25-12.30.bat install-bk-6.3.25-12.30.sh

REM Loop through files and delete each one
for %%f in (%FILES%) do (
    echo Deleting %%f...
    if exist %%f (
        del %%f
        echo ✓ Deleted %%f
    ) else (
        echo File %%f not found
    )
)

echo.
echo All backup files have been deleted!
