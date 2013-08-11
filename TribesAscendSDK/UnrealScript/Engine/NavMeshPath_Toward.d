module UnrealScript.Engine.NavMeshPath_Toward;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_Toward : NavMeshPathConstraint
{
	public @property final auto ref Vector GoalPoint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref Actor GoalActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 80); }
	final bool TowardGoal(NavigationHandle NavHandle, Actor Goal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Actor*)&params[4] = Goal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21079], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool TowardPoint(NavigationHandle NavHandle, Vector Point)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = Point;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21084], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21089], cast(void*)0, cast(void*)0);
	}
}
