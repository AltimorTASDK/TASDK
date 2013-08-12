module UnrealScript.Engine.Path_WithinTraversalDist;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_WithinTraversalDist : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Path_WithinTraversalDist")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDontExceedMaxDist;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction DontExceedMaxDist() { return mDontExceedMaxDist ? mDontExceedMaxDist : (mDontExceedMaxDist = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_WithinTraversalDist.DontExceedMaxDist")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_WithinTraversalDist.Recycle")); }
		}
	}
	@property final
	{
		auto ref
		{
			float SoftStartPenalty() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float MaxTraversalDist() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
		}
		bool bSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
final:
	static bool DontExceedMaxDist(Pawn P, float InMaxTraversalDist, bool bInSoft)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = InMaxTraversalDist;
		*cast(bool*)&params[8] = bInSoft;
		StaticClass.ProcessEvent(Functions.DontExceedMaxDist, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
