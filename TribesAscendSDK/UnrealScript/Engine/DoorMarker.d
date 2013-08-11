module UnrealScript.Engine.DoorMarker;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpActor;

extern(C++) interface DoorMarker : NavigationPoint
{
	enum EDoorType : ubyte
	{
		DOOR_Shoot = 0,
		DOOR_Touch = 1,
		DOOR_MAX = 2,
	}
	public @property final bool bTempDisabledCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x10) != 0; }
	public @property final bool bTempDisabledCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x10; } return val; }
	public @property final bool bDoorOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x8) != 0; }
	public @property final bool bDoorOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x8; } return val; }
	public @property final bool bBlockedWhenClosed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x4) != 0; }
	public @property final bool bBlockedWhenClosed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x4; } return val; }
	public @property final bool bInitiallyClosed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x2) != 0; }
	public @property final bool bInitiallyClosed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x2; } return val; }
	public @property final bool bWaitUntilCompletelyOpened() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x1) != 0; }
	public @property final bool bWaitUntilCompletelyOpened(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x1; } return val; }
	public @property final auto ref Actor DoorTrigger() { return *cast(Actor*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref DoorMarker.EDoorType DoorType() { return *cast(DoorMarker.EDoorType*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref InterpActor MyDoor() { return *cast(InterpActor*)(cast(size_t)cast(void*)this + 692); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14665], cast(void*)0, cast(void*)0);
	}
	final void MoverOpened()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14666], cast(void*)0, cast(void*)0);
	}
	final void MoverClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14667], cast(void*)0, cast(void*)0);
	}
	final Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14668], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final bool ProceedWithMove(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14672], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14675], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
