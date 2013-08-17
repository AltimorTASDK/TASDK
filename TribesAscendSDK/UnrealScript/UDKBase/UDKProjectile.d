module UnrealScript.UDKBase.UDKProjectile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Actor;

extern(C++) interface UDKProjectile : Projectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKProjectile")); }
	private static __gshared UDKProjectile mDefaultProperties;
	@property final static UDKProjectile DefaultProperties() { mixin(MGDPC("UDKProjectile", "UDKProjectile UDKBase.Default__UDKProjectile")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetTerminalVelocity;
			ScriptFunction mCreateProjectileLight;
		}
		public @property static final
		{
			ScriptFunction GetTerminalVelocity() { mixin(MGF("mGetTerminalVelocity", "Function UDKBase.UDKProjectile.GetTerminalVelocity")); }
			ScriptFunction CreateProjectileLight() { mixin(MGF("mCreateProjectileLight", "Function UDKBase.UDKProjectile.CreateProjectileLight")); }
		}
	}
	@property final
	{
		auto ref
		{
			Vehicle InstigatorBaseVehicle() { mixin(MGPC("Vehicle", 592)); }
			float CustomGravityScaling() { mixin(MGPC("float", 588)); }
			float Buoyancy() { mixin(MGPC("float", 584)); }
			float TerminalVelocity() { mixin(MGPC("float", 580)); }
			float LockWarningInterval() { mixin(MGPC("float", 576)); }
			float LastLockWarningTime() { mixin(MGPC("float", 572)); }
			Vector InitialDir() { mixin(MGPC("Vector", 560)); }
			float HomingTrackingStrength() { mixin(MGPC("float", 556)); }
			float BaseTrackingStrength() { mixin(MGPC("float", 552)); }
			Actor SeekTarget() { mixin(MGPC("Actor", 548)); }
			float AccelRate() { mixin(MGPC("float", 544)); }
			float CheckRadius() { mixin(MGPC("float", 540)); }
		}
		bool bNotBlockedByShield() { mixin(MGBPC(536, 0x8)); }
		bool bNotBlockedByShield(bool val) { mixin(MSBPC(536, 0x8)); }
		bool bCheckProjectileLight() { mixin(MGBPC(536, 0x4)); }
		bool bCheckProjectileLight(bool val) { mixin(MSBPC(536, 0x4)); }
		bool bShuttingDown() { mixin(MGBPC(536, 0x2)); }
		bool bShuttingDown(bool val) { mixin(MSBPC(536, 0x2)); }
		bool bWideCheck() { mixin(MGBPC(536, 0x1)); }
		bool bWideCheck(bool val) { mixin(MSBPC(536, 0x1)); }
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
