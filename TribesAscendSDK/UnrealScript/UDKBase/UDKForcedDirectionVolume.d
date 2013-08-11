module UnrealScript.UDKBase.UDKForcedDirectionVolume;

import ScriptClasses;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;

extern(C++) interface UDKForcedDirectionVolume : PhysicsVolume
{
	public @property final auto ref ScriptArray!(UDKVehicle) TouchingVehicles() { return *cast(ScriptArray!(UDKVehicle)*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref Vector ArrowDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 596); }
	public @property final bool bBlockSpectators() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x8) != 0; }
	public @property final bool bBlockSpectators(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x8; } return val; }
	public @property final bool bBlockPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x4) != 0; }
	public @property final bool bBlockPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x4; } return val; }
	public @property final bool bDenyExit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x2) != 0; }
	public @property final bool bDenyExit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x2; } return val; }
	public @property final bool bIgnoreHoverboards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x1) != 0; }
	public @property final bool bIgnoreHoverboards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x1; } return val; }
	public @property final auto ref ScriptClass TypeToForce() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 584); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34841], cast(void*)0, cast(void*)0);
	}
	final void ActorEnteredVolume(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34842], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34844], params.ptr, cast(void*)0);
	}
	final void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34853], params.ptr, cast(void*)0);
	}
	final bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34857], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
