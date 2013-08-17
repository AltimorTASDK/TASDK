module UnrealScript.UnrealEd.StaticMeshMode_Options;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface StaticMeshMode_Options : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.StaticMeshMode_Options")()); }
	private static __gshared StaticMeshMode_Options mDefaultProperties;
	@property final static StaticMeshMode_Options DefaultProperties() { mixin(MGDPC!(StaticMeshMode_Options, "StaticMeshMode_Options UnrealEd.Default__StaticMeshMode_Options")()); }
}
