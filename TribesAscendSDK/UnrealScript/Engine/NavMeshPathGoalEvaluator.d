module UnrealScript.Engine.NavMeshPathGoalEvaluator;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface NavMeshPathGoalEvaluator : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshPathGoalEvaluator")); }
	private static __gshared NavMeshPathGoalEvaluator mDefaultProperties;
	@property final static NavMeshPathGoalEvaluator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NavMeshPathGoalEvaluator)("NavMeshPathGoalEvaluator Engine.Default__NavMeshPathGoalEvaluator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycle;
			ScriptFunction mGetDumpString;
		}
		public @property static final
		{
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPathGoalEvaluator.Recycle")); }
			ScriptFunction GetDumpString() { return mGetDumpString ? mGetDumpString : (mGetDumpString = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPathGoalEvaluator.GetDumpString")); }
		}
	}
	struct BiasedGoalActor
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.NavMeshPathGoalEvaluator.BiasedGoalActor")); }
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
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
	ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDumpString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
