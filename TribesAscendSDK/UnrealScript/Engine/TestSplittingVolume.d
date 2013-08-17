module UnrealScript.Engine.TestSplittingVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Volume;

extern(C++) interface TestSplittingVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TestSplittingVolume")()); }
	private static __gshared TestSplittingVolume mDefaultProperties;
	@property final static TestSplittingVolume DefaultProperties() { mixin(MGDPC!(TestSplittingVolume, "TestSplittingVolume Engine.Default__TestSplittingVolume")()); }
	@property final auto ref UObject.Pointer VfTable_IInterface_NavMeshPathObject() { mixin(MGPC!(UObject.Pointer, 520)()); }
}
