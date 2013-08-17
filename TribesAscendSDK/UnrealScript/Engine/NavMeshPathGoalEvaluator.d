module UnrealScript.Engine.NavMeshPathGoalEvaluator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface NavMeshPathGoalEvaluator : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NavMeshPathGoalEvaluator")); }
	private static __gshared NavMeshPathGoalEvaluator mDefaultProperties;
	@property final static NavMeshPathGoalEvaluator DefaultProperties() { mixin(MGDPC("NavMeshPathGoalEvaluator", "NavMeshPathGoalEvaluator Engine.Default__NavMeshPathGoalEvaluator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycle;
			ScriptFunction mGetDumpString;
		}
		public @property static final
		{
			ScriptFunction Recycle() { mixin(MGF("mRecycle", "Function Engine.NavMeshPathGoalEvaluator.Recycle")); }
			ScriptFunction GetDumpString() { mixin(MGF("mGetDumpString", "Function Engine.NavMeshPathGoalEvaluator.GetDumpString")); }
		}
	}
	struct BiasedGoalActor
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.NavMeshPathGoalEvaluator.BiasedGoalActor")); }
		@property final auto ref
		{
			int ExtraCost() { mixin(MGPS("int", 4)); }
			Actor Goal() { mixin(MGPS("Actor", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			int NumNodesProcessed() { mixin(MGPC("int", 76)); }
			int NumNodesThrownOut() { mixin(MGPC("int", 72)); }
			int MaxPathVisits() { mixin(MGPC("int", 64)); }
			NavMeshPathGoalEvaluator NextEvaluator() { mixin(MGPC("NavMeshPathGoalEvaluator", 60)); }
		}
		bool bAlwaysCallEvaluateGoal() { mixin(MGBPC(68, 0x1)); }
		bool bAlwaysCallEvaluateGoal(bool val) { mixin(MSBPC(68, 0x1)); }
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
