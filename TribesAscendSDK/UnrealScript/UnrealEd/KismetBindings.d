module UnrealScript.UnrealEd.KismetBindings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface KismetBindings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.KismetBindings")); }
	private static __gshared KismetBindings mDefaultProperties;
	@property final static KismetBindings DefaultProperties() { mixin(MGDPC("KismetBindings", "KismetBindings UnrealEd.Default__KismetBindings")); }
}
