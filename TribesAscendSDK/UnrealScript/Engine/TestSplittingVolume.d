module UnrealScript.Engine.TestSplittingVolume;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Volume;

extern(C++) interface TestSplittingVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TestSplittingVolume")); }
	private static __gshared TestSplittingVolume mDefaultProperties;
	@property final static TestSplittingVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TestSplittingVolume)("TestSplittingVolume Engine.Default__TestSplittingVolume")); }
	@property final auto ref UObject.Pointer VfTable_IInterface_NavMeshPathObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 520); }
}
