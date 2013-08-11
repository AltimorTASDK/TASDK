module UnrealScript.Engine.NavMeshPathGoalEvaluator;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface NavMeshPathGoalEvaluator : UObject
{
public extern(D):
	struct BiasedGoalActor
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			int ExtraCost() { return *cast(int*)(cast(size_t)&this + 4); }
			Actor Goal() { return *cast(Actor*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			int NumNodesProcessed() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
			int NumNodesThrownOut() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			int MaxPathVisits() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			NavMeshPathGoalEvaluator NextEvaluator() { return *cast(NavMeshPathGoalEvaluator*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bAlwaysCallEvaluateGoal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bAlwaysCallEvaluateGoal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	}
final:
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20914], cast(void*)0, cast(void*)0);
	}
	ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20915], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
