module UnrealScript.UDKBase.UDKProjectile;

import ScriptClasses;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Actor;

extern(C++) interface UDKProjectile : Projectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKProjectile")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetTerminalVelocity;
			ScriptFunction mCreateProjectileLight;
		}
		public @property static final
		{
			ScriptFunction GetTerminalVelocity() { return mGetTerminalVelocity ? mGetTerminalVelocity : (mGetTerminalVelocity = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKProjectile.GetTerminalVelocity")); }
			ScriptFunction CreateProjectileLight() { return mCreateProjectileLight ? mCreateProjectileLight : (mCreateProjectileLight = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKProjectile.CreateProjectileLight")); }
		}
	}
	@property final
	{
		auto ref
		{
			Vehicle InstigatorBaseVehicle() { return *cast(Vehicle*)(cast(size_t)cast(void*)this + 592); }
			float CustomGravityScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
			float Buoyancy() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
			float TerminalVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
			float LockWarningInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
			float LastLockWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			Vector InitialDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 560); }
			float HomingTrackingStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			float BaseTrackingStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			Actor SeekTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 548); }
			float AccelRate() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			float CheckRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
		}
		bool bNotBlockedByShield() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x8) != 0; }
		bool bNotBlockedByShield(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x8; } return val; }
		bool bCheckProjectileLight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x4) != 0; }
		bool bCheckProjectileLight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x4; } return val; }
		bool bShuttingDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x2) != 0; }
		bool bShuttingDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x2; } return val; }
		bool bWideCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 536) & 0x1) != 0; }
		bool bWideCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 536) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 536) &= ~0x1; } return val; }
	}
final:
	float GetTerminalVelocity()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTerminalVelocity, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void CreateProjectileLight()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateProjectileLight, cast(void*)0, cast(void*)0);
	}
}
