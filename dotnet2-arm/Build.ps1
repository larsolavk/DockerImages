Write-Host Building runtime dependencies

Push-Location -Path $PSScriptRoot\runtime-deps
&docker build --rm --force-rm -t larsolavk/dotnet-arm:2.0-runtime-deps .
Pop-Location

Push-Location -Path $PSScriptRoot\runtime
&docker build --rm --force-rm -t larsolavk/dotnet-arm:2.0-runtime .
Pop-Location

Push-Location -Path $PSScriptRoot\aspnetcore
&docker build --rm --force-rm -t larsolavk/aspnetcore-arm:2.0 .
Pop-Location
