module UnrealScript.Engine.Path_AlongLine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_AlongLine : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Path_AlongLine")()); }
	private static __gshared Path_AlongLine mDefaultProperties;
	@property final static Path_AlongLine DefaultProperties() { mixin(MGDPC!(Path_AlongLine, "Path_AlongLine Engine.Default__Path_AlongLine")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAlongLine;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction AlongLine() { mixin(MGF!("mAlongLine", "Function Engine.Path_AlongLine.AlongLine")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.Path_AlongLine.Recycle")()); }
		}
	}
	@property final auto ref Vector Direction() { mixin(MGPC!(Vector, 68)()); }
final:
	static bool AlongLine(Pawn P, Vector Dir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Vector*)&params[4] = Dir;
		StaticClass.ProcessEvent(Functions.AlongLine, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
