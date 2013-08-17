module UnrealScript.GameFramework.GameSpecialMove;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GamePawn;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface GameSpecialMove : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameSpecialMove")()); }
	private static __gshared GameSpecialMove mDefaultProperties;
	@property final static GameSpecialMove DefaultProperties() { mixin(MGDPC!(GameSpecialMove, "GameSpecialMove GameFramework.Default__GameSpecialMove")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitSpecialMove;
			ScriptFunction mInitSpecialMoveFlags;
			ScriptFunction mExtractSpecialMoveFlags;
			ScriptFunction mCanChainMove;
			ScriptFunction mCanOverrideMoveWith;
			ScriptFunction mCanOverrideSpecialMove;
			ScriptFunction mCanDoSpecialMove;
			ScriptFunction mInternalCanDoSpecialMove;
			ScriptFunction mSpecialMoveStarted;
			ScriptFunction mSpecialMoveEnded;
			ScriptFunction mTick;
			ScriptFunction mSpecialMoveFlagsUpdated;
			ScriptFunction mShouldReplicate;
			ScriptFunction mSetReachPreciseDestination;
			ScriptFunction mSetFacePreciseRotation;
			ScriptFunction mReachedPrecisePosition;
			ScriptFunction mResetFacePreciseRotation;
			ScriptFunction mMessageEvent;
			ScriptFunction mForcePawnRotation;
			ScriptFunction mWorldToRelativeOffset;
			ScriptFunction mRelativeToWorldOffset;
		}
		public @property static final
		{
			ScriptFunction InitSpecialMove() { mixin(MGF!("mInitSpecialMove", "Function GameFramework.GameSpecialMove.InitSpecialMove")()); }
			ScriptFunction InitSpecialMoveFlags() { mixin(MGF!("mInitSpecialMoveFlags", "Function GameFramework.GameSpecialMove.InitSpecialMoveFlags")()); }
			ScriptFunction ExtractSpecialMoveFlags() { mixin(MGF!("mExtractSpecialMoveFlags", "Function GameFramework.GameSpecialMove.ExtractSpecialMoveFlags")()); }
			ScriptFunction CanChainMove() { mixin(MGF!("mCanChainMove", "Function GameFramework.GameSpecialMove.CanChainMove")()); }
			ScriptFunction CanOverrideMoveWith() { mixin(MGF!("mCanOverrideMoveWith", "Function GameFramework.GameSpecialMove.CanOverrideMoveWith")()); }
			ScriptFunction CanOverrideSpecialMove() { mixin(MGF!("mCanOverrideSpecialMove", "Function GameFramework.GameSpecialMove.CanOverrideSpecialMove")()); }
			ScriptFunction CanDoSpecialMove() { mixin(MGF!("mCanDoSpecialMove", "Function GameFramework.GameSpecialMove.CanDoSpecialMove")()); }
			ScriptFunction InternalCanDoSpecialMove() { mixin(MGF!("mInternalCanDoSpecialMove", "Function GameFramework.GameSpecialMove.InternalCanDoSpecialMove")()); }
			ScriptFunction SpecialMoveStarted() { mixin(MGF!("mSpecialMoveStarted", "Function GameFramework.GameSpecialMove.SpecialMoveStarted")()); }
			ScriptFunction SpecialMoveEnded() { mixin(MGF!("mSpecialMoveEnded", "Function GameFramework.GameSpecialMove.SpecialMoveEnded")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function GameFramework.GameSpecialMove.Tick")()); }
			ScriptFunction SpecialMoveFlagsUpdated() { mixin(MGF!("mSpecialMoveFlagsUpdated", "Function GameFramework.GameSpecialMove.SpecialMoveFlagsUpdated")()); }
			ScriptFunction ShouldReplicate() { mixin(MGF!("mShouldReplicate", "Function GameFramework.GameSpecialMove.ShouldReplicate")()); }
			ScriptFunction SetReachPreciseDestination() { mixin(MGF!("mSetReachPreciseDestination", "Function GameFramework.GameSpecialMove.SetReachPreciseDestination")()); }
			ScriptFunction SetFacePreciseRotation() { mixin(MGF!("mSetFacePreciseRotation", "Function GameFramework.GameSpecialMove.SetFacePreciseRotation")()); }
			ScriptFunction ReachedPrecisePosition() { mixin(MGF!("mReachedPrecisePosition", "Function GameFramework.GameSpecialMove.ReachedPrecisePosition")()); }
			ScriptFunction ResetFacePreciseRotation() { mixin(MGF!("mResetFacePreciseRotation", "Function GameFramework.GameSpecialMove.ResetFacePreciseRotation")()); }
			ScriptFunction MessageEvent() { mixin(MGF!("mMessageEvent", "Function GameFramework.GameSpecialMove.MessageEvent")()); }
			ScriptFunction ForcePawnRotation() { mixin(MGF!("mForcePawnRotation", "Function GameFramework.GameSpecialMove.ForcePawnRotation")()); }
			ScriptFunction WorldToRelativeOffset() { mixin(MGF!("mWorldToRelativeOffset", "Function GameFramework.GameSpecialMove.WorldToRelativeOffset")()); }
			ScriptFunction RelativeToWorldOffset() { mixin(MGF!("mRelativeToWorldOffset", "Function GameFramework.GameSpecialMove.RelativeToWorldOffset")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Rotator PreciseRotation() { mixin(MGPC!(Rotator, 112)()); }
			float PreciseRotationInterpolationTime() { mixin(MGPC!(float, 108)()); }
			Vector PreciseDestRelOffset() { mixin(MGPC!(Vector, 96)()); }
			Actor PreciseDestBase() { mixin(MGPC!(Actor, 92)()); }
			Vector PreciseDestination() { mixin(MGPC!(Vector, 80)()); }
			float LastCanDoSpecialMoveTime() { mixin(MGPC!(float, 72)()); }
			ScriptName Handle() { mixin(MGPC!(ScriptName, 64)()); }
			GamePawn PawnOwner() { mixin(MGPC!(GamePawn, 60)()); }
		}
		bool bForcePrecisePosition() { mixin(MGBPC!(76, 0x20)()); }
		bool bForcePrecisePosition(bool val) { mixin(MSBPC!(76, 0x20)()); }
		bool bReachedPreciseRotation() { mixin(MGBPC!(76, 0x10)()); }
		bool bReachedPreciseRotation(bool val) { mixin(MSBPC!(76, 0x10)()); }
		bool bReachPreciseRotation() { mixin(MGBPC!(76, 0x8)()); }
		bool bReachPreciseRotation(bool val) { mixin(MSBPC!(76, 0x8)()); }
		bool bReachedPreciseDestination() { mixin(MGBPC!(76, 0x4)()); }
		bool bReachedPreciseDestination(bool val) { mixin(MSBPC!(76, 0x4)()); }
		bool bReachPreciseDestination() { mixin(MGBPC!(76, 0x2)()); }
		bool bReachPreciseDestination(bool val) { mixin(MSBPC!(76, 0x2)()); }
		bool bLastCanDoSpecialMove() { mixin(MGBPC!(76, 0x1)()); }
		bool bLastCanDoSpecialMove(bool val) { mixin(MSBPC!(76, 0x1)()); }
	}
final:
	void InitSpecialMove(GamePawn inPawn, ScriptName InHandle)
	{
		ubyte params[12];
		params[] = 0;
		*cast(GamePawn*)params.ptr = inPawn;
		*cast(ScriptName*)&params[4] = InHandle;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitSpecialMove, params.ptr, cast(void*)0);
	}
	void InitSpecialMoveFlags(ref int out_Flags)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = out_Flags;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitSpecialMoveFlags, params.ptr, cast(void*)0);
		*out_Flags = *cast(int*)params.ptr;
	}
	void ExtractSpecialMoveFlags(int Flags)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Flags;
		(cast(ScriptObject)this).ProcessEvent(Functions.ExtractSpecialMoveFlags, params.ptr, cast(void*)0);
	}
	bool CanChainMove(ScriptName NextMove)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NextMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanChainMove, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CanOverrideMoveWith(ScriptName NewMove)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanOverrideMoveWith, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CanOverrideSpecialMove(ScriptName InMove)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanOverrideSpecialMove, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CanDoSpecialMove(bool bForceCheck)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanDoSpecialMove, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool InternalCanDoSpecialMove()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InternalCanDoSpecialMove, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SpecialMoveStarted(bool bForced, ScriptName PrevMove)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bForced;
		*cast(ScriptName*)&params[4] = PrevMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialMoveStarted, params.ptr, cast(void*)0);
	}
	void SpecialMoveEnded(ScriptName PrevMove, ScriptName NextMove)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PrevMove;
		*cast(ScriptName*)&params[8] = NextMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialMoveEnded, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void SpecialMoveFlagsUpdated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialMoveFlagsUpdated, cast(void*)0, cast(void*)0);
	}
	bool ShouldReplicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldReplicate, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetReachPreciseDestination(Vector DestinationToReach, bool bCancel)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = DestinationToReach;
		*cast(bool*)&params[12] = bCancel;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetReachPreciseDestination, params.ptr, cast(void*)0);
	}
	void SetFacePreciseRotation(Rotator RotationToFace, float InterpolationTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = RotationToFace;
		*cast(float*)&params[12] = InterpolationTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFacePreciseRotation, params.ptr, cast(void*)0);
	}
	void ReachedPrecisePosition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedPrecisePosition, cast(void*)0, cast(void*)0);
	}
	void ResetFacePreciseRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetFacePreciseRotation, cast(void*)0, cast(void*)0);
	}
	bool MessageEvent(ScriptName EventName, UObject Sender)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventName;
		*cast(UObject*)&params[8] = Sender;
		(cast(ScriptObject)this).ProcessEvent(Functions.MessageEvent, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void ForcePawnRotation(Pawn P, Rotator NewRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Rotator*)&params[4] = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForcePawnRotation, params.ptr, cast(void*)0);
	}
	Vector WorldToRelativeOffset(Rotator InRotation, Vector WorldSpaceOffset)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRotation;
		*cast(Vector*)&params[12] = WorldSpaceOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.WorldToRelativeOffset, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	Vector RelativeToWorldOffset(Rotator InRotation, Vector RelativeSpaceOffset)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRotation;
		*cast(Vector*)&params[12] = RelativeSpaceOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.RelativeToWorldOffset, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
}
