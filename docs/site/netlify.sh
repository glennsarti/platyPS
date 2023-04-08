#! /usr/bin/bash

# Download the powershell '.tar.gz' archive
curl -L -o /tmp/powershell.tar.gz https://github.com/PowerShell/PowerShell/releases/download/v7.3.3/powershell-7.3.3-linux-x64.tar.gz
mkdir pwsh
tar zxf /tmp/powershell.tar.gz -C ./pwsh
chmod +x ./pwsh/pwsh

./pwsh/pwsh -command "Set-PSRepository PSGallery -InstallationPolicy Trusted"
CI=true ./pwsh/pwsh -command "./build.ps1"

npm ci
hugo --gc --minify --baseURL $DEPLOY_PRIME_URL
