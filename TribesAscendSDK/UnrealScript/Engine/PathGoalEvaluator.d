module UnrealScript.Engine.PathGoalEvaluator;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Core.UObject;

extern(C++) interface PathGoalEvaluator : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PathGoalEvaluator")); }
	private static __gshared PathGoalEvaluator mDefaultProperties;
	@property final static PathGoalEvaluator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PathGoalEvaluator)("PathGoalEvaluator Engine.Default__PathGoalEvaluator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycle;
			ScriptFunction mGetDumpString;
		}
		public @property static final
		{
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.PathGoalEvaluator.Recycle")); }
			ScriptFunction GetDumpString() { return mGetDumpString ? mGetDumpString : (mGetDumpString = ScriptObject.Find!(ScriptFunction)("Function Engine.PathGoalEvaluator.GetDumpString")); }
		}
	}
	@property final auto ref
	{
		int CacheIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
		int MaxPathVisits() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
		NavigationPoint GeneratedGoal() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 64); }
		PathGoalEvaluator NextEvaluator() { return *cast(PathGoalEvaluator*)(cast(size_t)cast(void*)this + 60); }
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
