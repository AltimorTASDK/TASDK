module UnrealScript.Engine.NavMeshPath_MinDistBetweenSpecsOfType;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;
import UnrealScript.Engine.Pylon;

extern(C++) interface NavMeshPath_MinDistBetweenSpecsOfType : NavMeshPathConstraint
{
	public @property final auto ref Pylon.ENavMeshEdgeType EdgeType() { return *cast(Pylon.ENavMeshEdgeType*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref Vector InitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float MinDistBetweenEdgeTypes() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	final bool EnforceMinDist(NavigationHandle NavHandle, float InMinDist, Pylon.ENavMeshEdgeType InEdgeType, Vector LastLocation)
	{
		ubyte params[25];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(float*)&params[4] = InMinDist;
		*cast(Pylon.ENavMeshEdgeType*)&params[8] = InEdgeType;
		*cast(Vector*)&params[12] = LastLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21063], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21070], cast(void*)0, cast(void*)0);
	}
}
