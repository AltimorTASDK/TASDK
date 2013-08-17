module UnrealScript.UDKBase.UDKWeapon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UDKWeapon : Weapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKWeapon")()); }
	private static __gshared UDKWeapon mDefaultProperties;
	@property final static UDKWeapon DefaultProperties() { mixin(MGDPC!(UDKWeapon, "UDKWeapon UDKBase.Default__UDKWeapon")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsAimCorrect;
			ScriptFunction mBestMode;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mEnsureWeaponOverlayComponentLast;
			ScriptFunction mSetPosition;
		}
		public @property static final
		{
			ScriptFunction IsAimCorrect() { mixin(MGF!("mIsAimCorrect", "Function UDKBase.UDKWeapon.IsAimCorrect")()); }
			ScriptFunction BestMode() { mixin(MGF!("mBestMode", "Function UDKBase.UDKWeapon.BestMode")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UDKBase.UDKWeapon.PostBeginPlay")()); }
			ScriptFunction EnsureWeaponOverlayComponentLast() { mixin(MGF!("mEnsureWeaponOverlayComponentLast", "Function UDKBase.UDKWeapon.EnsureWeaponOverlayComponentLast")()); }
			ScriptFunction SetPosition() { mixin(MGF!("mSetPosition", "Function UDKBase.UDKWeapon.SetPosition")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) AimingTraceIgnoredActors() { mixin(MGPC!("ScriptArray!(Actor)", 736)()); }
			float AimTraceRange() { mixin(MGPC!("float", 732)()); }
			ubyte HitEnemy() { mixin(MGPC!("ubyte", 728)()); }
			int AmmoCount() { mixin(MGPC!("int", 724)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'OverlayMesh'!
		}
		bool bConsiderProjectileAcceleration() { mixin(MGBPC!(720, 0x2)()); }
		bool bConsiderProjectileAcceleration(bool val) { mixin(MSBPC!(720, 0x2)()); }
		bool bLeadTarget() { mixin(MGBPC!(720, 0x1)()); }
		bool bLeadTarget(bool val) { mixin(MSBPC!(720, 0x1)()); }
	}
final:
	bool IsAimCorrect()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsAimCorrect, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ubyte BestMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.BestMode, params.ptr, cast(void*)0);
		return params[0];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void EnsureWeaponOverlayComponentLast()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnsureWeaponOverlayComponentLast, cast(void*)0, cast(void*)0);
	}
	void SetPosition(UDKPawn Holder, float DeltaSeconds)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKPawn*)params.ptr = Holder;
		*cast(float*)&params[4] = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPosition, params.ptr, cast(void*)0);
	}
}
