module UnrealScript.UnrealEd.UnrealEdOptions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface UnrealEdOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.UnrealEdOptions")); }
	private static __gshared UnrealEdOptions mDefaultProperties;
	@property final static UnrealEdOptions DefaultProperties() { mixin(MGDPC("UnrealEdOptions", "UnrealEdOptions UnrealEd.Default__UnrealEdOptions")); }
}
