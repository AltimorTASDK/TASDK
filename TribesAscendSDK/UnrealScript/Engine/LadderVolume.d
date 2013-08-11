module UnrealScript.Engine.LadderVolume;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Ladder;

extern(C++) interface LadderVolume : PhysicsVolume
{
	public @property final auto ref Vector ClimbDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 608); }
	public @property final bool bAllowLadderStrafing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 624) & 0x4) != 0; }
	public @property final bool bAllowLadderStrafing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 624) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 624) &= ~0x4; } return val; }
	public @property final auto ref Pawn PendingClimber() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 628); }
	public @property final bool bAutoPath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 624) & 0x2) != 0; }
	public @property final bool bAutoPath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 624) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 624) &= ~0x2; } return val; }
	public @property final bool bNoPhysicalLadder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 624) & 0x1) != 0; }
	public @property final bool bNoPhysicalLadder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 624) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 624) &= ~0x1; } return val; }
	public @property final auto ref Ladder LadderList() { return *cast(Ladder*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref Vector LookDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref Rotator WallDir() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 584); }
	final bool InUse(Pawn Ignored)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Ignored;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11896], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19140], cast(void*)0, cast(void*)0);
	}
	final void PawnEnteredVolume(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19146], params.ptr, cast(void*)0);
	}
	final void PawnLeavingVolume(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19151], params.ptr, cast(void*)0);
	}
	final void PhysicsChangedFor(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19154], params.ptr, cast(void*)0);
	}
}
