FROM mcr.microsoft.com/dotnet/core/sdk:3.1

WORKDIR /inspector
RUN git clone https://github.com/microsoft/ApplicationInspector.git .
RUN dotnet build -c Release
CMD /bin/bash
