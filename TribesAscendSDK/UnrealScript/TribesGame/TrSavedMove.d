module UnrealScript.TribesGame.TrSavedMove;

import ScriptClasses;
import UnrealScript.Engine.SavedMove;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Actor;

extern(C++) interface TrSavedMove : SavedMove
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSavedMove")); }
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
			ScriptFunction Clear() { return mClear ? mClear : (mClear = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSavedMove.Clear")); }
			ScriptFunction PostUpdate() { return mPostUpdate ? mPostUpdate : (mPostUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSavedMove.PostUpdate")); }
			ScriptFunction CanCombineWith() { return mCanCombineWith ? mCanCombineWith : (mCanCombineWith = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSavedMove.CanCombineWith")); }
			ScriptFunction SetMoveFor() { return mSetMoveFor ? mSetMoveFor : (mSetMoveFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSavedMove.SetMoveFor")); }
			ScriptFunction CompressedFlags() { return mCompressedFlags ? mCompressedFlags : (mCompressedFlags = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSavedMove.CompressedFlags")); }
			ScriptFunction SetFlags() { return mSetFlags ? mSetFlags : (mSetFlags = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSavedMove.SetFlags")); }
			ScriptFunction GetDebugString() { return mGetDebugString ? mGetDebugString : (mGetDebugString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSavedMove.GetDebugString")); }
		}
	}
	@property final
	{
		@property final auto ref TrPawn.WalkingDeceleration m_CurrentDecelerationFactor() { return *cast(TrPawn.WalkingDeceleration*)(cast(size_t)cast(void*)this + 236); }
		bool m_bBlink() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
		bool m_bBlink(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
		bool m_bJumpJet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
		bool m_bJumpJet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
		bool m_bPressingJetpack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool m_bPressingJetpack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool m_bAirSpeedBoundToGroundSpeed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool m_bAirSpeedBoundToGroundSpeed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
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
