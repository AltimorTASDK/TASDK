module UnrealScript.Engine.LightmassImportanceVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface LightmassImportanceVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LightmassImportanceVolume")()); }
	private static __gshared LightmassImportanceVolume mDefaultProperties;
	@property final static LightmassImportanceVolume DefaultProperties() { mixin(MGDPC!(LightmassImportanceVolume, "LightmassImportanceVolume Engine.Default__LightmassImportanceVolume")()); }
}
