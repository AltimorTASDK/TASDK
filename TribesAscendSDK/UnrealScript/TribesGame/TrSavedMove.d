module UnrealScript.TribesGame.TrSavedMove;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SavedMove;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Actor;

extern(C++) interface TrSavedMove : SavedMove
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSavedMove")()); }
	private static __gshared TrSavedMove mDefaultProperties;
	@property final static TrSavedMove DefaultProperties() { mixin(MGDPC!(TrSavedMove, "TrSavedMove TribesGame.Default__TrSavedMove")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClear;
			ScriptFunction mPostUpdate;
			ScriptFunction mCanCombineWith;
			ScriptFunction mSetMoveFor;
			ScriptFunction mCompressedFlags;
			ScriptFunction mSetFlags;
			ScriptFunction mGetDebugString;
		}
		public @property static final
		{
			ScriptFunction Clear() { mixin(MGF!("mClear", "Function TribesGame.TrSavedMove.Clear")()); }
			ScriptFunction PostUpdate() { mixin(MGF!("mPostUpdate", "Function TribesGame.TrSavedMove.PostUpdate")()); }
			ScriptFunction CanCombineWith() { mixin(MGF!("mCanCombineWith", "Function TribesGame.TrSavedMove.CanCombineWith")()); }
			ScriptFunction SetMoveFor() { mixin(MGF!("mSetMoveFor", "Function TribesGame.TrSavedMove.SetMoveFor")()); }
			ScriptFunction CompressedFlags() { mixin(MGF!("mCompressedFlags", "Function TribesGame.TrSavedMove.CompressedFlags")()); }
			ScriptFunction SetFlags() { mixin(MGF!("mSetFlags", "Function TribesGame.TrSavedMove.SetFlags")()); }
			ScriptFunction GetDebugString() { mixin(MGF!("mGetDebugString", "Function TribesGame.TrSavedMove.GetDebugString")()); }
		}
	}
	@property final
	{
		@property final auto ref TrPawn.WalkingDeceleration m_CurrentDecelerationFactor() { mixin(MGPC!(TrPawn.WalkingDeceleration, 236)()); }
		bool m_bBlink() { mixin(MGBPC!(232, 0x8)()); }
		bool m_bBlink(bool val) { mixin(MSBPC!(232, 0x8)()); }
		bool m_bJumpJet() { mixin(MGBPC!(232, 0x4)()); }
		bool m_bJumpJet(bool val) { mixin(MSBPC!(232, 0x4)()); }
		bool m_bPressingJetpack() { mixin(MGBPC!(232, 0x2)()); }
		bool m_bPressingJetpack(bool val) { mixin(MSBPC!(232, 0x2)()); }
		bool m_bAirSpeedBoundToGroundSpeed() { mixin(MGBPC!(232, 0x1)()); }
		bool m_bAirSpeedBoundToGroundSpeed(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
final:
	void Clear()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Clear, cast(void*)0, cast(void*)0);
	}
	void PostUpdate(PlayerController P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostUpdate, params.ptr, cast(void*)0);
	}
	bool CanCombineWith(SavedMove NewMove, Pawn inPawn, float MaxDelta)
	{
		ubyte params[16];
		params[] = 0;
		*cast(SavedMove*)params.ptr = NewMove;
		*cast(Pawn*)&params[4] = inPawn;
		*cast(float*)&params[8] = MaxDelta;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanCombineWith, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void SetMoveFor(PlayerController P, float DeltaTime, Vector newAccel, Actor.EDoubleClickDir InDoubleClick)
	{
		ubyte params[21];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Vector*)&params[8] = newAccel;
		*cast(Actor.EDoubleClickDir*)&params[20] = InDoubleClick;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMoveFor, params.ptr, cast(void*)0);
	}
	ubyte CompressedFlags()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CompressedFlags, params.ptr, cast(void*)0);
		return params[0];
	}
	static Actor.EDoubleClickDir SetFlags(ubyte Flags, PlayerController PC)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = Flags;
		*cast(PlayerController*)&params[4] = PC;
		StaticClass.ProcessEvent(Functions.SetFlags, params.ptr, cast(void*)0);
		return *cast(Actor.EDoubleClickDir*)&params[8];
	}
	ScriptString GetDebugString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
