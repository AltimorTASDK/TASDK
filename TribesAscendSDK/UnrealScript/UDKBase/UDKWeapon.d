module UnrealScript.UDKBase.UDKWeapon;

import ScriptClasses;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UDKWeapon : Weapon
{
	public @property final auto ref ScriptArray!(Actor) AimingTraceIgnoredActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref float AimTraceRange() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref ubyte HitEnemy() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref int AmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 724); }
	public @property final bool bConsiderProjectileAcceleration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x2) != 0; }
	public @property final bool bConsiderProjectileAcceleration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x2; } return val; }
	public @property final bool bLeadTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x1) != 0; }
	public @property final bool bLeadTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x1; } return val; }
	final bool IsAimCorrect()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35784], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final ubyte BestMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35805], params.ptr, cast(void*)0);
		return params[0];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36274], cast(void*)0, cast(void*)0);
	}
	final void EnsureWeaponOverlayComponentLast()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36275], cast(void*)0, cast(void*)0);
	}
	final void SetPosition(UDKPawn Holder, float DeltaSeconds)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKPawn*)params.ptr = Holder;
		*cast(float*)&params[4] = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36276], params.ptr, cast(void*)0);
	}
}
