#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/runtime:6.0 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["ConsoleDockerStarter/ConsoleDockerStarter.csproj", "ConsoleDockerStarter/"]
RUN dotnet restore "ConsoleDockerStarter/ConsoleDockerStarter.csproj"
COPY . .
WORKDIR "/src/ConsoleDockerStarter"
RUN dotnet build "ConsoleDockerStarter.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ConsoleDockerStarter.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
ENV user=a
ENV password=b
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ConsoleDockerStarter.dll"]