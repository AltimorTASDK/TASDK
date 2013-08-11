module UnrealScript.GameFramework.NavMeshGoal_OutOfViewFrom;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_OutOfViewFrom : NavMeshPathGoalEvaluator
{
	public @property final bool bShowDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
	public @property final bool bShowDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	public @property final auto ref Vector OutOfViewLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref UObject.Pointer GoalPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 80); }
	final void RecycleNative()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32860], cast(void*)0, cast(void*)0);
	}
	final bool MustBeHiddenFromThisPoint(NavigationHandle NavHandle, Vector InOutOfViewLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = InOutOfViewLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32861], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32866], cast(void*)0, cast(void*)0);
	}
}
