module UnrealScript.Engine.Path_AvoidInEscapableNodes;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_AvoidInEscapableNodes : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Path_AvoidInEscapableNodes")); }
	private static __gshared Path_AvoidInEscapableNodes mDefaultProperties;
	@property final static Path_AvoidInEscapableNodes DefaultProperties() { mixin(MGDPC("Path_AvoidInEscapableNodes", "Path_AvoidInEscapableNodes Engine.Default__Path_AvoidInEscapableNodes")); }
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
			ScriptFunction CachePawnReacFlags() { mixin(MGF("mCachePawnReacFlags", "Function Engine.Path_AvoidInEscapableNodes.CachePawnReacFlags")); }
			ScriptFunction DontGetStuck() { mixin(MGF("mDontGetStuck", "Function Engine.Path_AvoidInEscapableNodes.DontGetStuck")); }
			ScriptFunction Recycle() { mixin(MGF("mRecycle", "Function Engine.Path_AvoidInEscapableNodes.Recycle")); }
		}
	}
	@property final auto ref
	{
		int MoveFlags() { mixin(MGPC("int", 80)); }
		int MaxFallSpeed() { mixin(MGPC("int", 76)); }
		int Height() { mixin(MGPC("int", 72)); }
		int Radius() { mixin(MGPC("int", 68)); }
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
