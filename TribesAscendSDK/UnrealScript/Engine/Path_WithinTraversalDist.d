module UnrealScript.Engine.Path_WithinTraversalDist;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_WithinTraversalDist : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Path_WithinTraversalDist")); }
	private static __gshared Path_WithinTraversalDist mDefaultProperties;
	@property final static Path_WithinTraversalDist DefaultProperties() { mixin(MGDPC("Path_WithinTraversalDist", "Path_WithinTraversalDist Engine.Default__Path_WithinTraversalDist")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDontExceedMaxDist;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction DontExceedMaxDist() { mixin(MGF("mDontExceedMaxDist", "Function Engine.Path_WithinTraversalDist.DontExceedMaxDist")); }
			ScriptFunction Recycle() { mixin(MGF("mRecycle", "Function Engine.Path_WithinTraversalDist.Recycle")); }
		}
	}
	@property final
	{
		auto ref
		{
			float SoftStartPenalty() { mixin(MGPC("float", 76)); }
			float MaxTraversalDist() { mixin(MGPC("float", 68)); }
		}
		bool bSoft() { mixin(MGBPC(72, 0x1)); }
		bool bSoft(bool val) { mixin(MSBPC(72, 0x1)); }
	}
final:
	static bool DontExceedMaxDist(Pawn P, float InMaxTraversalDist, bool* bInSoft = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = InMaxTraversalDist;
		if (bInSoft !is null)
			*cast(bool*)&params[8] = *bInSoft;
		StaticClass.ProcessEvent(Functions.DontExceedMaxDist, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
