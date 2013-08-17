module UnrealScript.UnrealEd.UnrealEdTypes;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface UnrealEdTypes : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.UnrealEdTypes")()); }
	private static __gshared UnrealEdTypes mDefaultProperties;
	@property final static UnrealEdTypes DefaultProperties() { mixin(MGDPC!(UnrealEdTypes, "UnrealEdTypes UnrealEd.Default__UnrealEdTypes")()); }
}
