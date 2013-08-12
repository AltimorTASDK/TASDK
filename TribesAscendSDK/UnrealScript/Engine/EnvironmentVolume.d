module UnrealScript.Engine.EnvironmentVolume;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Volume;

extern(C++) interface EnvironmentVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.EnvironmentVolume")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetSplitNavMesh;
		public @property static final ScriptFunction SetSplitNavMesh() { return mSetSplitNavMesh ? mSetSplitNavMesh : (mSetSplitNavMesh = ScriptObject.Find!(ScriptFunction)("Function Engine.EnvironmentVolume.SetSplitNavMesh")); }
	}
	@property final
	{
		auto ref
		{
			UObject.Pointer VfTable_IInterface_NavMeshPathObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 524); }
			UObject.Pointer VfTable_IInterface_NavMeshPathObstacle() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 520); }
		}
		bool bSplitNavMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1) != 0; }
		bool bSplitNavMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1; } return val; }
	}
	final void SetSplitNavMesh(bool bNewValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSplitNavMesh, params.ptr, cast(void*)0);
	}
}
