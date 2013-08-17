module UnrealScript.UnrealEd.DumpLightmapInfoCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface DumpLightmapInfoCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.DumpLightmapInfoCommandlet")()); }
	private static __gshared DumpLightmapInfoCommandlet mDefaultProperties;
	@property final static DumpLightmapInfoCommandlet DefaultProperties() { mixin(MGDPC!(DumpLightmapInfoCommandlet, "DumpLightmapInfoCommandlet UnrealEd.Default__DumpLightmapInfoCommandlet")()); }
}
