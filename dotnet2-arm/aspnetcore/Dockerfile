FROM larsolavk/dotnet-arm:2.0-runtime

# set up network
# ENV ASPNETCORE_URLS http://+:80

# set up the runtime store
RUN curl -o /tmp/runtimestore.tar.gz \
    https://distaspnet.blob.core.windows.net/runtimestore/2.0.0-preview2-final/linux-arm/aspnetcore.runtimestore.tar.gz \
    && export DOTNET_HOME=$(dirname $(readlink $(which dotnet))) \
    && tar -x -C $DOTNET_HOME -f /tmp/runtimestore.tar.gz \
    && rm /tmp/runtimestore.tar.gz