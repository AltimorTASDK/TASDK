module UnrealScript.UnrealEd.PersistentCookerData;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface PersistentCookerData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PersistentCookerData")); }
}
