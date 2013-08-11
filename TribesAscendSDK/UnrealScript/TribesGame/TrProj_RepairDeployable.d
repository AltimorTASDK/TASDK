module UnrealScript.TribesGame.TrProj_RepairDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_RepairDeployable : TrProj_Mine
{
	public @property final auto ref ScriptArray!(Actor) ActorsToRepair() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 920); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) RepairBeams() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 932); }
	public @property final auto ref float m_fTickFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
	public @property final auto ref float m_fTimeSinceLastTick() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
	public @property final auto ref SoundCue RepairBeamSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 944); }
	public @property final auto ref float m_fVehicleRepairPercentage() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref float m_fRepairPercentage() { return *cast(float*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref float m_fRepairBuff() { return *cast(float*)(cast(size_t)cast(void*)this + 908); }
	public @property final auto ref float m_fRepairRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
	public @property final auto ref float m_fCheckNearbyActorsFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 900); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108974], cast(void*)0, cast(void*)0);
	}
	final void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108975], params.ptr, cast(void*)0);
	}
	final void ArmedTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108981], cast(void*)0, cast(void*)0);
	}
	final void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108982], params.ptr, cast(void*)0);
	}
	final void CheckRepair()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108987], cast(void*)0, cast(void*)0);
	}
	final void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108993], params.ptr, cast(void*)0);
	}
	final void DetonateObsolete(bool bDetonateFromDamage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDetonateFromDamage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108996], params.ptr, cast(void*)0);
	}
}
