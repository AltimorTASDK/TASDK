module UnrealScript.UnrealEd.UnrealEdKeyBindings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface UnrealEdKeyBindings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.UnrealEdKeyBindings")()); }
	private static __gshared UnrealEdKeyBindings mDefaultProperties;
	@property final static UnrealEdKeyBindings DefaultProperties() { mixin(MGDPC!(UnrealEdKeyBindings, "UnrealEdKeyBindings UnrealEd.Default__UnrealEdKeyBindings")()); }
}
