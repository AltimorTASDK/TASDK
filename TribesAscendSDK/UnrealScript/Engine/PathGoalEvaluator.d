module UnrealScript.Engine.PathGoalEvaluator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Core.UObject;

extern(C++) interface PathGoalEvaluator : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PathGoalEvaluator")); }
	private static __gshared PathGoalEvaluator mDefaultProperties;
	@property final static PathGoalEvaluator DefaultProperties() { mixin(MGDPC("PathGoalEvaluator", "PathGoalEvaluator Engine.Default__PathGoalEvaluator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycle;
			ScriptFunction mGetDumpString;
		}
		public @property static final
		{
			ScriptFunction Recycle() { mixin(MGF("mRecycle", "Function Engine.PathGoalEvaluator.Recycle")); }
			ScriptFunction GetDumpString() { mixin(MGF("mGetDumpString", "Function Engine.PathGoalEvaluator.GetDumpString")); }
		}
	}
	@property final auto ref
	{
		int CacheIdx() { mixin(MGPC("int", 72)); }
		int MaxPathVisits() { mixin(MGPC("int", 68)); }
		NavigationPoint GeneratedGoal() { mixin(MGPC("NavigationPoint", 64)); }
		PathGoalEvaluator NextEvaluator() { mixin(MGPC("PathGoalEvaluator", 60)); }
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
