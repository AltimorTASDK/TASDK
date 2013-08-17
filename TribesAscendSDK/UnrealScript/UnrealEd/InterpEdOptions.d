module UnrealScript.UnrealEd.InterpEdOptions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface InterpEdOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpEdOptions")); }
	private static __gshared InterpEdOptions mDefaultProperties;
	@property final static InterpEdOptions DefaultProperties() { mixin(MGDPC("InterpEdOptions", "InterpEdOptions UnrealEd.Default__InterpEdOptions")); }
}
