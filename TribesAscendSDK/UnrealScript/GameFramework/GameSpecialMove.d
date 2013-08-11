module UnrealScript.GameFramework.GameSpecialMove;

import ScriptClasses;
import UnrealScript.GameFramework.GamePawn;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface GameSpecialMove : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			Rotator PreciseRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 112); }
			float PreciseRotationInterpolationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			Vector PreciseDestRelOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
			Actor PreciseDestBase() { return *cast(Actor*)(cast(size_t)cast(void*)this + 92); }
			Vector PreciseDestination() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
			float LastCanDoSpecialMoveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			ScriptName Handle() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
			GamePawn PawnOwner() { return *cast(GamePawn*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bForcePrecisePosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x20) != 0; }
		bool bForcePrecisePosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x20; } return val; }
		bool bReachedPreciseRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x10) != 0; }
		bool bReachedPreciseRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x10; } return val; }
		bool bReachPreciseRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x8) != 0; }
		bool bReachPreciseRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x8; } return val; }
		bool bReachedPreciseDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x4) != 0; }
		bool bReachedPreciseDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x4; } return val; }
		bool bReachPreciseDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool bReachPreciseDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool bLastCanDoSpecialMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool bLastCanDoSpecialMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
final:
	void InitSpecialMove(GamePawn inPawn, ScriptName InHandle)
	{
		ubyte params[12];
		params[] = 0;
		*cast(GamePawn*)params.ptr = inPawn;
		*cast(ScriptName*)&params[4] = InHandle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31883], params.ptr, cast(void*)0);
	}
	void InitSpecialMoveFlags(int* out_Flags)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = *out_Flags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31886], params.ptr, cast(void*)0);
		*out_Flags = *cast(int*)params.ptr;
	}
	void ExtractSpecialMoveFlags(int Flags)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Flags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31888], params.ptr, cast(void*)0);
	}
	bool CanChainMove(ScriptName NextMove)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NextMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31890], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CanOverrideMoveWith(ScriptName NewMove)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31893], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CanOverrideSpecialMove(ScriptName InMove)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31896], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CanDoSpecialMove(bool bForceCheck)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31899], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool InternalCanDoSpecialMove()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31902], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SpecialMoveStarted(bool bForced, ScriptName PrevMove)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bForced;
		*cast(ScriptName*)&params[4] = PrevMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31904], params.ptr, cast(void*)0);
	}
	void SpecialMoveEnded(ScriptName PrevMove, ScriptName NextMove)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PrevMove;
		*cast(ScriptName*)&params[8] = NextMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31907], params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31910], params.ptr, cast(void*)0);
	}
	void SpecialMoveFlagsUpdated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31912], cast(void*)0, cast(void*)0);
	}
	bool ShouldReplicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31913], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetReachPreciseDestination(Vector DestinationToReach, bool bCancel)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = DestinationToReach;
		*cast(bool*)&params[12] = bCancel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31915], params.ptr, cast(void*)0);
	}
	void SetFacePreciseRotation(Rotator RotationToFace, float InterpolationTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = RotationToFace;
		*cast(float*)&params[12] = InterpolationTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31918], params.ptr, cast(void*)0);
	}
	void ReachedPrecisePosition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31921], cast(void*)0, cast(void*)0);
	}
	void ResetFacePreciseRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31922], cast(void*)0, cast(void*)0);
	}
	bool MessageEvent(ScriptName EventName, UObject Sender)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventName;
		*cast(UObject*)&params[8] = Sender;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31923], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void ForcePawnRotation(Pawn P, Rotator NewRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Rotator*)&params[4] = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31927], params.ptr, cast(void*)0);
	}
	Vector WorldToRelativeOffset(Rotator InRotation, Vector WorldSpaceOffset)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRotation;
		*cast(Vector*)&params[12] = WorldSpaceOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31930], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	Vector RelativeToWorldOffset(Rotator InRotation, Vector RelativeSpaceOffset)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRotation;
		*cast(Vector*)&params[12] = RelativeSpaceOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31934], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
}
