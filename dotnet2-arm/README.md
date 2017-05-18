# dotnet2-arm
Docker base images for running .NET Core 2.0 applications on Raspberry Pi

The dotnet core 2.0 images from microsoft is based on baseimages for x86/x64 processor archutecture. The Raspberry Pi has an ARM processor, so the images provided by Microsoft will not work together with the Pi.

Some info about the images created:

* Based on the resin/rpi-raspbian:jessie base image from [resin.io](https://resin.io)
* Using similar image hierarchy as for the images provied by Microsoft
** larsolavk/dotnet-arm:2.0-runtime-deps
** larsolavk/dotnet-arm:2.0-runtime
