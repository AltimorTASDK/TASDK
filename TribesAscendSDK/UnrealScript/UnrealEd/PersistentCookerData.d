module UnrealScript.UnrealEd.PersistentCookerData;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface PersistentCookerData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.PersistentCookerData")); }
	private static __gshared PersistentCookerData mDefaultProperties;
	@property final static PersistentCookerData DefaultProperties() { mixin(MGDPC("PersistentCookerData", "PersistentCookerData UnrealEd.Default__PersistentCookerData")); }
}
