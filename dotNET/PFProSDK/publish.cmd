for /d /r . %%d in (bin obj) do @if exist "%%d" rd /s/q "%%d"
dotnet build PFProSDK.csproj -c Release
nuget pack PFProSDK.csproj -Properties Configuration=Release -OutputDirectory "bin\Release"
dotnet nuget push "bin\Release\Payflow_Pro_dotNet_SDK.*.nupkg" --source "github"