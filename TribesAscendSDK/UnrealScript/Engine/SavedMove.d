module UnrealScript.Engine.SavedMove;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface SavedMove : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			float TimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
			SavedMove NextMove() { return *cast(SavedMove*)(cast(size_t)cast(void*)this + 60); }
			Vector Acceleration() { return *cast(Vector*)(cast(size_t)cast(void*)this + 176); }
			Actor EndBase() { return *cast(Actor*)(cast(size_t)cast(void*)this + 204); }
			Vector SavedRelativeLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
			Vector SavedLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 128); }
			Vector SavedVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 140); }
			float Delta() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			Actor.EDoubleClickDir DoubleClickMove() { return *cast(Actor.EDoubleClickDir*)(cast(size_t)cast(void*)this + 76); }
			Vector StartVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 104); }
			Actor StartBase() { return *cast(Actor*)(cast(size_t)cast(void*)this + 200); }
			Vector StartFloor() { return *cast(Vector*)(cast(size_t)cast(void*)this + 116); }
			Rotator Rotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 188); }
			Vector RootMotionInterpCurveLastValue() { return *cast(Vector*)(cast(size_t)cast(void*)this + 220); }
			float RootMotionInterpCurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
			float AccelDotThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
			float CustomTimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
			Vector RMVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 164); }
			Vector StartRelativeLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 92); }
			Vector StartLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
			SkeletalMeshComponent.ERootMotionMode RootMotionMode() { return *cast(SkeletalMeshComponent.ERootMotionMode*)(cast(size_t)cast(void*)this + 78); }
			Actor.EPhysics SavedPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 77); }
		}
		bool bForceRMVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x20) != 0; }
		bool bForceRMVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x20; } return val; }
		bool bRootMotionFromInterpCurve() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x80) != 0; }
		bool bRootMotionFromInterpCurve(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x80; } return val; }
		bool bForceMaxAccel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x40) != 0; }
		bool bForceMaxAccel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x40; } return val; }
		bool bPreciseDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x10) != 0; }
		bool bPreciseDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x10; } return val; }
		bool bDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8) != 0; }
		bool bDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8; } return val; }
		bool bPressedJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
		bool bPressedJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
		bool bDuck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
		bool bDuck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
		bool bRun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bRun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
final:
	Actor.EDoubleClickDir SetFlags(ubyte Flags, PlayerController PC)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = Flags;
		*cast(PlayerController*)&params[4] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8150], params.ptr, cast(void*)0);
		return *cast(Actor.EDoubleClickDir*)&params[8];
	}
	ubyte CompressedFlags()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8248], params.ptr, cast(void*)0);
		return params[0];
	}
	bool IsImportantMove(Vector CompareAccel)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = CompareAccel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8269], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool CanCombineWith(SavedMove NewMove, Pawn inPawn, float MaxDelta)
	{
		ubyte params[16];
		params[] = 0;
		*cast(SavedMove*)params.ptr = NewMove;
		*cast(Pawn*)&params[4] = inPawn;
		*cast(float*)&params[8] = MaxDelta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8272], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	Vector GetStartLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8274], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void Clear()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25395], cast(void*)0, cast(void*)0);
	}
	void PostUpdate(PlayerController P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25396], params.ptr, cast(void*)0);
	}
	void SetInitialPosition(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25400], params.ptr, cast(void*)0);
	}
	void SetMoveFor(PlayerController P, float DeltaTime, Vector newAccel, Actor.EDoubleClickDir InDoubleClick)
	{
		ubyte params[21];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Vector*)&params[8] = newAccel;
		*cast(Actor.EDoubleClickDir*)&params[20] = InDoubleClick;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25405], params.ptr, cast(void*)0);
	}
	void PrepMoveFor(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25410], params.ptr, cast(void*)0);
	}
	void ResetMoveFor(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25412], params.ptr, cast(void*)0);
	}
	ScriptString GetDebugString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25417], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
