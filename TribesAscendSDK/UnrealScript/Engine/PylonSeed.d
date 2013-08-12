module UnrealScript.Engine.PylonSeed;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface PylonSeed : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PylonSeed")); }
	private static __gshared PylonSeed mDefaultProperties;
	@property final static PylonSeed DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PylonSeed)("PylonSeed Engine.Default__PylonSeed")); }
	@property final auto ref UObject.Pointer VfTable_IInterface_NavMeshPathObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
}
