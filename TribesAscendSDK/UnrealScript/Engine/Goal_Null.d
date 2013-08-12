module UnrealScript.Engine.Goal_Null;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathGoalEvaluator;

extern(C++) interface Goal_Null : PathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Goal_Null")); }
	private static __gshared Goal_Null mDefaultProperties;
	@property final static Goal_Null DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Goal_Null)("Goal_Null Engine.Default__Goal_Null")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGoUntilBust;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction GoUntilBust() { return mGoUntilBust ? mGoUntilBust : (mGoUntilBust = ScriptObject.Find!(ScriptFunction)("Function Engine.Goal_Null.GoUntilBust")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.Goal_Null.Recycle")); }
		}
	}
final:
	static bool GoUntilBust(Pawn P, int InMaxPathVisits)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(int*)&params[4] = InMaxPathVisits;
		StaticClass.ProcessEvent(Functions.GoUntilBust, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
