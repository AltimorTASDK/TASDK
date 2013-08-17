module UnrealScript.UTGame.UTDummyPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UTGame.UTSeqAct_DummyWeaponFire;

extern(C++) interface UTDummyPawn : UTPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDummyPawn")); }
	private static __gshared UTDummyPawn mDefaultProperties;
	@property final static UTDummyPawn DefaultProperties() { mixin(MGDPC("UTDummyPawn", "UTDummyPawn UTGame.Default__UTDummyPawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mWeaponFired;
			ScriptFunction mSetPawnAmbientSound;
			ScriptFunction mSetWeaponAmbientSound;
			ScriptFunction mGetAdjustedAimFor;
			ScriptFunction mWeaponAttachmentChanged;
			ScriptFunction mGetWeaponStartTraceLocation;
			ScriptFunction mGetPawnViewLocation;
			ScriptFunction mTick;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTDummyPawn.PostBeginPlay")); }
			ScriptFunction WeaponFired() { mixin(MGF("mWeaponFired", "Function UTGame.UTDummyPawn.WeaponFired")); }
			ScriptFunction SetPawnAmbientSound() { mixin(MGF("mSetPawnAmbientSound", "Function UTGame.UTDummyPawn.SetPawnAmbientSound")); }
			ScriptFunction SetWeaponAmbientSound() { mixin(MGF("mSetWeaponAmbientSound", "Function UTGame.UTDummyPawn.SetWeaponAmbientSound")); }
			ScriptFunction GetAdjustedAimFor() { mixin(MGF("mGetAdjustedAimFor", "Function UTGame.UTDummyPawn.GetAdjustedAimFor")); }
			ScriptFunction WeaponAttachmentChanged() { mixin(MGF("mWeaponAttachmentChanged", "Function UTGame.UTDummyPawn.WeaponAttachmentChanged")); }
			ScriptFunction GetWeaponStartTraceLocation() { mixin(MGF("mGetWeaponStartTraceLocation", "Function UTGame.UTDummyPawn.GetWeaponStartTraceLocation")); }
			ScriptFunction GetPawnViewLocation() { mixin(MGF("mGetPawnViewLocation", "Function UTGame.UTDummyPawn.GetPawnViewLocation")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function UTGame.UTDummyPawn.Tick")); }
		}
	}
	@property final auto ref UTSeqAct_DummyWeaponFire FireAction() { mixin(MGPC("UTSeqAct_DummyWeaponFire", 2208)); }
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector* HitLocation = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		if (HitLocation !is null)
			*cast(Vector*)&params[8] = *HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponFired, params.ptr, cast(void*)0);
	}
	void SetPawnAmbientSound(SoundCue NewAmbientSound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = NewAmbientSound;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPawnAmbientSound, params.ptr, cast(void*)0);
	}
	void SetWeaponAmbientSound(SoundCue NewAmbientSound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = NewAmbientSound;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponAmbientSound, params.ptr, cast(void*)0);
	}
	Rotator GetAdjustedAimFor(Weapon InWeapon, Vector projStart)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = projStart;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdjustedAimFor, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	void WeaponAttachmentChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponAttachmentChanged, cast(void*)0, cast(void*)0);
	}
	Vector GetWeaponStartTraceLocation(Weapon* CurrentWeapon = null)
	{
		ubyte params[16];
		params[] = 0;
		if (CurrentWeapon !is null)
			*cast(Weapon*)params.ptr = *CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponStartTraceLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawnViewLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
