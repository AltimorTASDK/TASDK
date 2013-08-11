module UnrealScript.Engine.NavMeshGoal_Null;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_Null : NavMeshPathGoalEvaluator
{
	public @property final auto ref UObject.Pointer PartialGoal() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 80); }
	final bool GoUntilBust(NavigationHandle NavHandle, int InMaxPathVisits)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(int*)&params[4] = InMaxPathVisits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20975], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void RecycleNative()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20980], cast(void*)0, cast(void*)0);
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20981], cast(void*)0, cast(void*)0);
	}
}
