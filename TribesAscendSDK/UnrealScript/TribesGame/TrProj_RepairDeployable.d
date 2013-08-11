module UnrealScript.TribesGame.TrProj_RepairDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_RepairDeployable : TrProj_Mine
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(Actor) ActorsToRepair() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 920); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) RepairBeams() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 932); }
		float m_fTickFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
		float m_fTimeSinceLastTick() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
		SoundCue RepairBeamSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 944); }
		float m_fVehicleRepairPercentage() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
		float m_fRepairPercentage() { return *cast(float*)(cast(size_t)cast(void*)this + 912); }
		float m_fRepairBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 908); }
		float m_fRepairRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
		float m_fCheckNearbyActorsFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 900); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108974], cast(void*)0, cast(void*)0);
	}
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108975], params.ptr, cast(void*)0);
	}
	void ArmedTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108981], cast(void*)0, cast(void*)0);
	}
	void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108982], params.ptr, cast(void*)0);
	}
	void CheckRepair()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108987], cast(void*)0, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108993], params.ptr, cast(void*)0);
	}
	void DetonateObsolete(bool bDetonateFromDamage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDetonateFromDamage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108996], params.ptr, cast(void*)0);
	}
}
