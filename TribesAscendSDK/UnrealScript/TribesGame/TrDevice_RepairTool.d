module UnrealScript.TribesGame.TrDevice_RepairTool;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_RepairTool : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_RepairTool")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCanActorBeRepaired;
			ScriptFunction mGetActorHealth;
			ScriptFunction mGetAmmoCount;
			ScriptFunction mOnEndConstantFire;
			ScriptFunction mOnStartConstantFire;
			ScriptFunction mInstantFire;
			ScriptFunction mProcessInstantHit_Internal;
			ScriptFunction mGetRepairEndAndTangent;
			ScriptFunction mKillRepairEffect;
			ScriptFunction mHasViewModeSwitched;
			ScriptFunction mSpawnRepairEffect;
			ScriptFunction mUpdateRepairEffect;
			ScriptFunction mUpdateDamageMaterial;
			ScriptFunction mModifyInstantHitDamage;
			ScriptFunction mHasAnyAmmo;
		}
		public @property static final
		{
			ScriptFunction CanActorBeRepaired() { return mCanActorBeRepaired ? mCanActorBeRepaired : (mCanActorBeRepaired = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.CanActorBeRepaired")); }
			ScriptFunction GetActorHealth() { return mGetActorHealth ? mGetActorHealth : (mGetActorHealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.GetActorHealth")); }
			ScriptFunction GetAmmoCount() { return mGetAmmoCount ? mGetAmmoCount : (mGetAmmoCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.GetAmmoCount")); }
			ScriptFunction OnEndConstantFire() { return mOnEndConstantFire ? mOnEndConstantFire : (mOnEndConstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.OnEndConstantFire")); }
			ScriptFunction OnStartConstantFire() { return mOnStartConstantFire ? mOnStartConstantFire : (mOnStartConstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.OnStartConstantFire")); }
			ScriptFunction InstantFire() { return mInstantFire ? mInstantFire : (mInstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.InstantFire")); }
			ScriptFunction ProcessInstantHit_Internal() { return mProcessInstantHit_Internal ? mProcessInstantHit_Internal : (mProcessInstantHit_Internal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.ProcessInstantHit_Internal")); }
			ScriptFunction GetRepairEndAndTangent() { return mGetRepairEndAndTangent ? mGetRepairEndAndTangent : (mGetRepairEndAndTangent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.GetRepairEndAndTangent")); }
			ScriptFunction KillRepairEffect() { return mKillRepairEffect ? mKillRepairEffect : (mKillRepairEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.KillRepairEffect")); }
			ScriptFunction HasViewModeSwitched() { return mHasViewModeSwitched ? mHasViewModeSwitched : (mHasViewModeSwitched = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.HasViewModeSwitched")); }
			ScriptFunction SpawnRepairEffect() { return mSpawnRepairEffect ? mSpawnRepairEffect : (mSpawnRepairEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.SpawnRepairEffect")); }
			ScriptFunction UpdateRepairEffect() { return mUpdateRepairEffect ? mUpdateRepairEffect : (mUpdateRepairEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.UpdateRepairEffect")); }
			ScriptFunction UpdateDamageMaterial() { return mUpdateDamageMaterial ? mUpdateDamageMaterial : (mUpdateDamageMaterial = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.UpdateDamageMaterial")); }
			ScriptFunction ModifyInstantHitDamage() { return mModifyInstantHitDamage ? mModifyInstantHitDamage : (mModifyInstantHitDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.ModifyInstantHitDamage")); }
			ScriptFunction HasAnyAmmo() { return mHasAnyAmmo ? mHasAnyAmmo : (mHasAnyAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RepairTool.HasAnyAmmo")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.CanActorBeRepaired, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetActorHealth(Actor HitActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorHealth, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	int GetAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAmmoCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void OnEndConstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEndConstantFire, cast(void*)0, cast(void*)0);
	}
	void OnStartConstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStartConstantFire, cast(void*)0, cast(void*)0);
	}
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
	void ProcessInstantHit_Internal(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessInstantHit_Internal, params.ptr, cast(void*)0);
	}
	bool GetRepairEndAndTangent(Vector* EndLocation, Vector* Tangent, Actor* HitActor)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = *EndLocation;
		*cast(Vector*)&params[12] = *Tangent;
		*cast(Actor*)&params[24] = *HitActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRepairEndAndTangent, params.ptr, cast(void*)0);
		*EndLocation = *cast(Vector*)params.ptr;
		*Tangent = *cast(Vector*)&params[12];
		*HitActor = *cast(Actor*)&params[24];
		return *cast(bool*)&params[28];
	}
	void KillRepairEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillRepairEffect, cast(void*)0, cast(void*)0);
	}
	bool HasViewModeSwitched()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasViewModeSwitched, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SpawnRepairEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnRepairEffect, cast(void*)0, cast(void*)0);
	}
	void UpdateRepairEffect(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRepairEffect, params.ptr, cast(void*)0);
	}
	void UpdateDamageMaterial()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDamageMaterial, cast(void*)0, cast(void*)0);
	}
	float ModifyInstantHitDamage(ubyte FiringMode, Actor.ImpactInfo Impact, float Damage)
	{
		ubyte params[92];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(float*)&params[84] = Damage;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyInstantHitDamage, params.ptr, cast(void*)0);
		return *cast(float*)&params[88];
	}
	bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAnyAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
