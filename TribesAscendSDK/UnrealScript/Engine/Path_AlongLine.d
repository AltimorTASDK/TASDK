module UnrealScript.Engine.Path_AlongLine;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_AlongLine : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Path_AlongLine")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAlongLine;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction AlongLine() { return mAlongLine ? mAlongLine : (mAlongLine = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_AlongLine.AlongLine")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_AlongLine.Recycle")); }
		}
	}
	@property final auto ref Vector Direction() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
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
