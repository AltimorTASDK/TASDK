module UnrealScript.Engine.EnvironmentVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Volume;

extern(C++) interface EnvironmentVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.EnvironmentVolume")); }
	private static __gshared EnvironmentVolume mDefaultProperties;
	@property final static EnvironmentVolume DefaultProperties() { mixin(MGDPC("EnvironmentVolume", "EnvironmentVolume Engine.Default__EnvironmentVolume")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetSplitNavMesh;
		public @property static final ScriptFunction SetSplitNavMesh() { mixin(MGF("mSetSplitNavMesh", "Function Engine.EnvironmentVolume.SetSplitNavMesh")); }
	}
	@property final
	{
		auto ref
		{
			Pointer VfTable_IInterface_NavMeshPathObject() { mixin(MGPC("Pointer", 524)); }
			Pointer VfTable_IInterface_NavMeshPathObstacle() { mixin(MGPC("Pointer", 520)); }
		}
		bool bSplitNavMesh() { mixin(MGBPC(528, 0x1)); }
		bool bSplitNavMesh(bool val) { mixin(MSBPC(528, 0x1)); }
	}
	final void SetSplitNavMesh(bool bNewValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSplitNavMesh, params.ptr, cast(void*)0);
	}
}
