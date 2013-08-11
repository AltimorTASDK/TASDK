module UnrealScript.TribesGame.TrDevice_RepairTool;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_RepairTool : TrDevice_ConstantFire
{
public extern(D):
	@property final
	{
		auto ref
		{
			Vector m_Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2212); }
			Vector m_Tangent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2200); }
			float m_fTargetHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 2196); }
			float m_fDisplayOn() { return *cast(float*)(cast(size_t)cast(void*)this + 2192); }
			float m_fVehicleRepairPercentage() { return *cast(float*)(cast(size_t)cast(void*)this + 2180); }
			float m_fPawnRepairPercentage() { return *cast(float*)(cast(size_t)cast(void*)this + 2176); }
			float m_fRepairPercentage() { return *cast(float*)(cast(size_t)cast(void*)this + 2172); }
		}
		bool m_bIsBehindView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2188) & 0x1) != 0; }
		bool m_bIsBehindView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2188) &= ~0x1; } return val; }
	}
final:
	bool CanActorBeRepaired(Actor HitActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85852], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetActorHealth(Actor HitActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85855], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	int GetAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85860], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void OnEndConstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85862], cast(void*)0, cast(void*)0);
	}
	void OnStartConstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85864], cast(void*)0, cast(void*)0);
	}
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85865], cast(void*)0, cast(void*)0);
	}
	void ProcessInstantHit_Internal(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85874], params.ptr, cast(void*)0);
	}
	bool GetRepairEndAndTangent(Vector* EndLocation, Vector* Tangent, Actor* HitActor)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = *EndLocation;
		*cast(Vector*)&params[12] = *Tangent;
		*cast(Actor*)&params[24] = *HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85889], params.ptr, cast(void*)0);
		*EndLocation = *cast(Vector*)params.ptr;
		*Tangent = *cast(Vector*)&params[12];
		*HitActor = *cast(Actor*)&params[24];
		return *cast(bool*)&params[28];
	}
	void KillRepairEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85897], cast(void*)0, cast(void*)0);
	}
	bool HasViewModeSwitched()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85898], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SpawnRepairEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85902], cast(void*)0, cast(void*)0);
	}
	void UpdateRepairEffect(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85909], params.ptr, cast(void*)0);
	}
	void UpdateDamageMaterial()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85914], cast(void*)0, cast(void*)0);
	}
	float ModifyInstantHitDamage(ubyte FiringMode, Actor.ImpactInfo Impact, float Damage)
	{
		ubyte params[92];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(float*)&params[84] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85917], params.ptr, cast(void*)0);
		return *cast(float*)&params[88];
	}
	bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85933], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
