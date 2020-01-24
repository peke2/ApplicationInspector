FROM mcr.microsoft.com/dotnet/core/sdk:3.1

WORKDIR /inspector
RUN git clone https://github.com/microsoft/ApplicationInspector.git .
RUN dotnet build -c Release
WORKDIR /inspector/AppInspector/bin/Release/netcoreapp3.0
# パスを追加したが、dllは実行可能ファイルじゃないので意味なし
# ENV PATH $PATH:/inspector/AppInspector/bin/Release/netcoreapp3.0
