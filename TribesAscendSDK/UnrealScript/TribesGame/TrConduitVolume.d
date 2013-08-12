module UnrealScript.TribesGame.TrConduitVolume;

import ScriptClasses;
import UnrealScript.TribesGame.TrPhysicsVolume;
import UnrealScript.Engine.Pawn;

extern(C++) interface TrConduitVolume : TrPhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrConduitVolume")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPawnEnteredVolume;
			ScriptFunction mPawnLeavingVolume;
		}
		public @property static final
		{
			ScriptFunction PawnEnteredVolume() { return mPawnEnteredVolume ? mPawnEnteredVolume : (mPawnEnteredVolume = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrConduitVolume.PawnEnteredVolume")); }
			ScriptFunction PawnLeavingVolume() { return mPawnLeavingVolume ? mPawnLeavingVolume : (mPawnLeavingVolume = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrConduitVolume.PawnLeavingVolume")); }
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
