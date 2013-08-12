module UnrealScript.Engine.Path_TowardPoint;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_TowardPoint : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Path_TowardPoint")); }
	private static __gshared Path_TowardPoint mDefaultProperties;
	@property final static Path_TowardPoint DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Path_TowardPoint)("Path_TowardPoint Engine.Default__Path_TowardPoint")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTowardPoint;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction TowardPoint() { return mTowardPoint ? mTowardPoint : (mTowardPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_TowardPoint.TowardPoint")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_TowardPoint.Recycle")); }
		}
	}
	@property final auto ref Vector GoalPoint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
final:
	static bool TowardPoint(Pawn P, Vector Point)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Vector*)&params[4] = Point;
		StaticClass.ProcessEvent(Functions.TowardPoint, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
