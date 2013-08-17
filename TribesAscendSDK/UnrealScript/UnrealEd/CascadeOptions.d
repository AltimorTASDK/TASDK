module UnrealScript.UnrealEd.CascadeOptions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface CascadeOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.CascadeOptions")); }
	private static __gshared CascadeOptions mDefaultProperties;
	@property final static CascadeOptions DefaultProperties() { mixin(MGDPC("CascadeOptions", "CascadeOptions UnrealEd.Default__CascadeOptions")); }
}
