module UnrealScript.UDKBase.UDKProjectile;

import ScriptClasses;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Actor;

extern(C++) interface UDKProjectile : Projectile
{
	public @property final auto ref Vehicle InstigatorBaseVehicle() { return *cast(Vehicle*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref float CustomGravityScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref float Buoyancy() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref float TerminalVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float LockWarningInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float LastLockWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref Vector InitialDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref float HomingTrackingStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float BaseTrackingStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref Actor SeekTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref float AccelRate() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref float CheckRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
	public @property final bool bNotBlockedByShield() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x8) != 0; }
	public @property final bool bNotBlockedByShield(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x8; } return val; }
	public @property final bool bCheckProjectileLight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x4) != 0; }
	public @property final bool bCheckProjectileLight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x4; } return val; }
	public @property final bool bShuttingDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x2) != 0; }
	public @property final bool bShuttingDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x2; } return val; }
	public @property final bool bWideCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x1) != 0; }
	public @property final bool bWideCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x1; } return val; }
	final float GetTerminalVelocity()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35306], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void CreateProjectileLight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35308], cast(void*)0, cast(void*)0);
	}
}
