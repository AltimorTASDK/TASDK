module UnrealScript.TribesGame.TrConduitVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPhysicsVolume;
import UnrealScript.Engine.Pawn;

extern(C++) interface TrConduitVolume : TrPhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrConduitVolume")); }
	private static __gshared TrConduitVolume mDefaultProperties;
	@property final static TrConduitVolume DefaultProperties() { mixin(MGDPC("TrConduitVolume", "TrConduitVolume TribesGame.Default__TrConduitVolume")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPawnEnteredVolume;
			ScriptFunction mPawnLeavingVolume;
		}
		public @property static final
		{
			ScriptFunction PawnEnteredVolume() { mixin(MGF("mPawnEnteredVolume", "Function TribesGame.TrConduitVolume.PawnEnteredVolume")); }
			ScriptFunction PawnLeavingVolume() { mixin(MGF("mPawnLeavingVolume", "Function TribesGame.TrConduitVolume.PawnLeavingVolume")); }
		}
	}
final:
	void PawnEnteredVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredVolume, params.ptr, cast(void*)0);
	}
	void PawnLeavingVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeavingVolume, params.ptr, cast(void*)0);
	}
}
