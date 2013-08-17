module UnrealScript.Engine.Path_TowardPoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_TowardPoint : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Path_TowardPoint")()); }
	private static __gshared Path_TowardPoint mDefaultProperties;
	@property final static Path_TowardPoint DefaultProperties() { mixin(MGDPC!(Path_TowardPoint, "Path_TowardPoint Engine.Default__Path_TowardPoint")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTowardPoint;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction TowardPoint() { mixin(MGF!("mTowardPoint", "Function Engine.Path_TowardPoint.TowardPoint")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.Path_TowardPoint.Recycle")()); }
		}
	}
	@property final auto ref Vector GoalPoint() { mixin(MGPC!(Vector, 68)()); }
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
