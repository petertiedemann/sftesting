FROM microsoft/windowsservercore
RUN @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
RUN %ALLUSERSPROFILE%\chocolatey\bin\choco install webpi --confirm
RUN %ALLUSERSPROFILE%\chocolatey\bin\choco install webpicmd --confirm
RUN %ALLUSERSPROFILE%\chocolatey\bin\choco install lessmsi --confirm
# RUN %ALLUSERSPROFILE%\chocolatey\bin\choco install MicrosoftAzure-ServiceFabric-Runtime --source webpi --confirm --execution-timeout 0 --timeout 0
RUN %ALLUSERSPROFILE%\chocolatey\bin\choco install MicrosoftAzure-ServiceFabric-CoreSDK --source webpi --confirm --execution-timeout 0 --timeout 0
# RUN "$ENV:ProgramFiles\Microsoft SDKs\Service Fabric\ClusterSetup\DevClusterSetup.ps1"
EXPOSE 80
EXPOSE 19080
EXPOSE 20000-30000