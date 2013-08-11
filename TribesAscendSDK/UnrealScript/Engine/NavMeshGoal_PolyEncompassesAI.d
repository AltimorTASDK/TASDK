module UnrealScript.Engine.NavMeshGoal_PolyEncompassesAI;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_PolyEncompassesAI : NavMeshPathGoalEvaluator
{
	public @property final auto ref Vector OverrideExtentToCheck() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
	final bool MakeSureAIFits(NavigationHandle NavHandle, Vector InOverrideExtentToCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = InOverrideExtentToCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20983], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20988], cast(void*)0, cast(void*)0);
	}
}
