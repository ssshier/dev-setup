# win package manager

## winget

[https://docs.microsoft.com/zh-cn/windows/package-manager/](https://docs.microsoft.com/zh-cn/windows/package-manager/)

## scoop

[https://scoop.sh/](https://scoop.sh/)

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

```

## chocolatey

[https://chocolatey.org/](https://chocolatey.org/)

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```