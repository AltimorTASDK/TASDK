module UnrealScript.UDKBase.UDKWeapon;

import ScriptClasses;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UDKWeapon : Weapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKWeapon")); }
	private static __gshared UDKWeapon mDefaultProperties;
	@property final static UDKWeapon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKWeapon)("UDKWeapon UDKBase.Default__UDKWeapon")); }
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
			ScriptFunction IsAimCorrect() { return mIsAimCorrect ? mIsAimCorrect : (mIsAimCorrect = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKWeapon.IsAimCorrect")); }
			ScriptFunction BestMode() { return mBestMode ? mBestMode : (mBestMode = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKWeapon.BestMode")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKWeapon.PostBeginPlay")); }
			ScriptFunction EnsureWeaponOverlayComponentLast() { return mEnsureWeaponOverlayComponentLast ? mEnsureWeaponOverlayComponentLast : (mEnsureWeaponOverlayComponentLast = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKWeapon.EnsureWeaponOverlayComponentLast")); }
			ScriptFunction SetPosition() { return mSetPosition ? mSetPosition : (mSetPosition = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKWeapon.SetPosition")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) AimingTraceIgnoredActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 736); }
			float AimTraceRange() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
			ubyte HitEnemy() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 728); }
			int AmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 724); }
		}
		bool bConsiderProjectileAcceleration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x2) != 0; }
		bool bConsiderProjectileAcceleration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x2; } return val; }
		bool bLeadTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x1) != 0; }
		bool bLeadTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x1; } return val; }
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
