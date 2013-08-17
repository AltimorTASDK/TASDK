module UnrealScript.PlatformCommon.SearFiles;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface SearFiles : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class PlatformCommon.SearFiles")); }
	private static __gshared SearFiles mDefaultProperties;
	@property final static SearFiles DefaultProperties() { mixin(MGDPC("SearFiles", "SearFiles PlatformCommon.Default__SearFiles")); }
}
