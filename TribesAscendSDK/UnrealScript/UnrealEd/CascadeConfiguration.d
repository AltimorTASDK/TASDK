module UnrealScript.UnrealEd.CascadeConfiguration;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface CascadeConfiguration : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.CascadeConfiguration")); }
	private static __gshared CascadeConfiguration mDefaultProperties;
	@property final static CascadeConfiguration DefaultProperties() { mixin(MGDPC("CascadeConfiguration", "CascadeConfiguration UnrealEd.Default__CascadeConfiguration")); }
}
