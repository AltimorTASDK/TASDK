module UnrealScript.Engine.Path_AvoidInEscapableNodes;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_AvoidInEscapableNodes : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Path_AvoidInEscapableNodes")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCachePawnReacFlags;
			ScriptFunction mDontGetStuck;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction CachePawnReacFlags() { return mCachePawnReacFlags ? mCachePawnReacFlags : (mCachePawnReacFlags = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_AvoidInEscapableNodes.CachePawnReacFlags")); }
			ScriptFunction DontGetStuck() { return mDontGetStuck ? mDontGetStuck : (mDontGetStuck = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_AvoidInEscapableNodes.DontGetStuck")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_AvoidInEscapableNodes.Recycle")); }
		}
	}
	@property final auto ref
	{
		int MoveFlags() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
		int MaxFallSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		int Height() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
		int Radius() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	}
final:
	void CachePawnReacFlags(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CachePawnReacFlags, params.ptr, cast(void*)0);
	}
	static bool DontGetStuck(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.DontGetStuck, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
