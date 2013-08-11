module UnrealScript.Engine.Teleporter;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface Teleporter : NavigationPoint
{
	public @property final auto ref float LastFired() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref Vector TargetVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 716); }
	public @property final bool bCanTeleportVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x40) != 0; }
	public @property final bool bCanTeleportVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x40; } return val; }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x20) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x20; } return val; }
	public @property final bool bReversesZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x10) != 0; }
	public @property final bool bReversesZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x10; } return val; }
	public @property final bool bReversesY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x8) != 0; }
	public @property final bool bReversesY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x8; } return val; }
	public @property final bool bReversesX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x4) != 0; }
	public @property final bool bReversesX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x4; } return val; }
	public @property final bool bChangesYaw() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x2) != 0; }
	public @property final bool bChangesYaw(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x2; } return val; }
	public @property final bool bChangesVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x1) != 0; }
	public @property final bool bChangesVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x1; } return val; }
	public @property final auto ref ScriptName ProductRequired() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 704); }
	// WARNING: Property 'URL' has the same name as a defined type!
	final bool CanTeleport(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27737], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27740], cast(void*)0, cast(void*)0);
	}
	final bool Accept(Actor Incoming, Actor Source)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Incoming;
		*cast(Actor*)&params[4] = Source;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27741], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27750], params.ptr, cast(void*)0);
	}
	final void PostTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27755], params.ptr, cast(void*)0);
	}
	final Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27760], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
}
