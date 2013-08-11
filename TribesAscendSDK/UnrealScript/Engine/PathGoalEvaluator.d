module UnrealScript.Engine.PathGoalEvaluator;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Core.UObject;

extern(C++) interface PathGoalEvaluator : UObject
{
	public @property final auto ref int CacheIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int MaxPathVisits() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref NavigationPoint GeneratedGoal() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref PathGoalEvaluator NextEvaluator() { return *cast(PathGoalEvaluator*)(cast(size_t)cast(void*)this + 60); }
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18164], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18165], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
