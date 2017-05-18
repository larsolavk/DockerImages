# dotnet2-arm
Docker base images for running .NET Core 2.0-preview1 applications on Raspberry Pi

The images provided by Microsoft are based on base images targeted for x86/x64 processor architecture. The Raspberry Pi has an ARM processor so these images will not work.

Some info about the images created:

*dotnet*
* Based on the resin/rpi-raspbian:jessie base image from [resin.io](https://resin.io)
* Using a somewhat similar image hierarchy as the Microsoft provded images
  * larsolavk/dotnet-arm:2.0-runtime-deps
  * larsolavk/dotnet-arm:2.0-runtime
  * larsolavk/dotnet-arm:2.0-runtime

*aspnetcore*
In the original microsoft/aspnetcore image for x86/x64 a runtime store is downloaded and installed, which will contain all the runtime assets needed to run ASP.NET Core 2.0 applications by default, removing the requirement to have assets from the referenced ASP.NET Core NuGet packages deployed with the application. These assets are also pre-JIT'ted such that application startup-time is improved.
A have not been able to find a ARM based package for this so the larsolavk/aspnetcore Dockerfile will fail to build. For now the larsolavk/dotnet-arm:2.0-runtime image can be used as a base image for ASP.NET Core 2.0 applications.
