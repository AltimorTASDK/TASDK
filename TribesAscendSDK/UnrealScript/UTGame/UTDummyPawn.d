module UnrealScript.UTGame.UTDummyPawn;

import ScriptClasses;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UTGame.UTSeqAct_DummyWeaponFire;

extern(C++) interface UTDummyPawn : UTPawn
{
public extern(D):
	@property final auto ref UTSeqAct_DummyWeaponFire FireAction() { return *cast(UTSeqAct_DummyWeaponFire*)(cast(size_t)cast(void*)this + 2208); }
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47295], cast(void*)0, cast(void*)0);
	}
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47296], params.ptr, cast(void*)0);
	}
	void SetPawnAmbientSound(SoundCue NewAmbientSound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = NewAmbientSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47300], params.ptr, cast(void*)0);
	}
	void SetWeaponAmbientSound(SoundCue NewAmbientSound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = NewAmbientSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47303], params.ptr, cast(void*)0);
	}
	Rotator GetAdjustedAimFor(Weapon InWeapon, Vector projStart)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = projStart;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47305], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	void WeaponAttachmentChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47312], cast(void*)0, cast(void*)0);
	}
	Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47313], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47316], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47318], params.ptr, cast(void*)0);
	}
}
