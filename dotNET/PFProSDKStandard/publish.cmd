for /d /r . %%d in (bin obj) do @if exist "%%d" rd /s/q "%%d"
dotnet build PFProSDKStandard.csproj -c Release
dotnet pack PFProSDKStandard.csproj -c Release
dotnet nuget push "bin\Release\PayflowProSDK.Standard.*.nupkg" --source "github"