module UnrealScript.Engine.NavMeshGoal_PolyEncompassesAI;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_PolyEncompassesAI : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoal_PolyEncompassesAI")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMakeSureAIFits;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction MakeSureAIFits() { return mMakeSureAIFits ? mMakeSureAIFits : (mMakeSureAIFits = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_PolyEncompassesAI.MakeSureAIFits")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_PolyEncompassesAI.Recycle")); }
		}
	}
	@property final auto ref Vector OverrideExtentToCheck() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
final:
	static bool MakeSureAIFits(NavigationHandle NavHandle, Vector InOverrideExtentToCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = InOverrideExtentToCheck;
		StaticClass.ProcessEvent(Functions.MakeSureAIFits, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
