cd ~C:\Vam\BepInEx\git\VaM_PerformancePlugin

# We need to copy over the DLL containing the high-level game code
# it's reference in the plugin via reflection, for build-time type safety checks
cp ~/VaM/VaM_Data/Managed/Assembly-CSharp.dll ~/git/VaM_PerformancePlugin/VaM_PerformancePlugin/lib/VaM_Data/Managed/Assembly-CSharp.dll

# Now we can build without errors
# initial build may take a bit while dependencies are downloaded from NuGet
dotnet build -c Release

# copy plugin to install it
mkdir -p ~/VaM/BepInEx/plugins/VaM_PerformancePlugin/
cp ~/git/VaM_PerformancePlugin/VaM_PerformancePlugin/bin/Release/net35/VaM_PerformancePlugin.dll ~/VaM/BepInEx/plugins/VaM_PerformancePlugin/