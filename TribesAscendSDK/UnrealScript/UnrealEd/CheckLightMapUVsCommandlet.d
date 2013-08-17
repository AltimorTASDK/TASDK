module UnrealScript.UnrealEd.CheckLightMapUVsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface CheckLightMapUVsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.CheckLightMapUVsCommandlet")); }
	private static __gshared CheckLightMapUVsCommandlet mDefaultProperties;
	@property final static CheckLightMapUVsCommandlet DefaultProperties() { mixin(MGDPC("CheckLightMapUVsCommandlet", "CheckLightMapUVsCommandlet UnrealEd.Default__CheckLightMapUVsCommandlet")); }
}
