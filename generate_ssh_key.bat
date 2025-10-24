@echo off
echo Generating SSH key...
set /p email="Enter your GitHub email address: "
ssh-keygen -t rsa -b 4096 -C "%email%" -f "%USERPROFILE%\.ssh\id_rsa" -N ""
echo SSH key generated successfully!
echo.
echo Your public key is:
type "%USERPROFILE%\.ssh\id_rsa.pub"
echo.
echo Add this key to your GitHub account at: https://github.com/settings/keys
pause