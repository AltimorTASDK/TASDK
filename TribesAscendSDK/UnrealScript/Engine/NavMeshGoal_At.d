module UnrealScript.Engine.NavMeshGoal_At;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_At : NavMeshPathGoalEvaluator
{
	public @property final auto ref UObject.Pointer PartialGoal() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref UObject.Pointer GoalPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 100); }
	public @property final bool bKeepPartial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
	public @property final bool bKeepPartial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	public @property final auto ref float GoalDist() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref Vector Goal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
	final void RecycleNative()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20922], cast(void*)0, cast(void*)0);
	}
	final bool AtActor(NavigationHandle NavHandle, Actor GoalActor, float Dist, bool bReturnPartial)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Actor*)&params[4] = GoalActor;
		*cast(float*)&params[8] = Dist;
		*cast(bool*)&params[12] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20923], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool AtLocation(NavigationHandle NavHandle, Vector GoalLocation, float Dist, bool bReturnPartial)
	{
		ubyte params[28];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = GoalLocation;
		*cast(float*)&params[16] = Dist;
		*cast(bool*)&params[20] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20934], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20941], cast(void*)0, cast(void*)0);
	}
}