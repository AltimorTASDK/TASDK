module UnrealScript.Engine.NavMeshPathGoalEvaluator;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface NavMeshPathGoalEvaluator : UObject
{
	struct BiasedGoalActor
	{
		public @property final auto ref int ExtraCost() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ExtraCost[4];
		public @property final auto ref Actor Goal() { return *cast(Actor*)(cast(size_t)&this + 0); }
		private ubyte __Goal[4];
	}
	public @property final auto ref int NumNodesProcessed() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref int NumNodesThrownOut() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final bool bAlwaysCallEvaluateGoal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
	public @property final bool bAlwaysCallEvaluateGoal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	public @property final auto ref int MaxPathVisits() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref NavMeshPathGoalEvaluator NextEvaluator() { return *cast(NavMeshPathGoalEvaluator*)(cast(size_t)cast(void*)this + 60); }
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20914], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20915], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
