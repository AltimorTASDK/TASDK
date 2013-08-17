module UnrealScript.TribesGame.TrDevice_RepairTool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_RepairTool : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_RepairTool")()); }
	private static __gshared TrDevice_RepairTool mDefaultProperties;
	@property final static TrDevice_RepairTool DefaultProperties() { mixin(MGDPC!(TrDevice_RepairTool, "TrDevice_RepairTool TribesGame.Default__TrDevice_RepairTool")()); }
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
			ScriptFunction CanActorBeRepaired() { mixin(MGF!("mCanActorBeRepaired", "Function TribesGame.TrDevice_RepairTool.CanActorBeRepaired")()); }
			ScriptFunction GetActorHealth() { mixin(MGF!("mGetActorHealth", "Function TribesGame.TrDevice_RepairTool.GetActorHealth")()); }
			ScriptFunction GetAmmoCount() { mixin(MGF!("mGetAmmoCount", "Function TribesGame.TrDevice_RepairTool.GetAmmoCount")()); }
			ScriptFunction OnEndConstantFire() { mixin(MGF!("mOnEndConstantFire", "Function TribesGame.TrDevice_RepairTool.OnEndConstantFire")()); }
			ScriptFunction OnStartConstantFire() { mixin(MGF!("mOnStartConstantFire", "Function TribesGame.TrDevice_RepairTool.OnStartConstantFire")()); }
			ScriptFunction InstantFire() { mixin(MGF!("mInstantFire", "Function TribesGame.TrDevice_RepairTool.InstantFire")()); }
			ScriptFunction ProcessInstantHit_Internal() { mixin(MGF!("mProcessInstantHit_Internal", "Function TribesGame.TrDevice_RepairTool.ProcessInstantHit_Internal")()); }
			ScriptFunction GetRepairEndAndTangent() { mixin(MGF!("mGetRepairEndAndTangent", "Function TribesGame.TrDevice_RepairTool.GetRepairEndAndTangent")()); }
			ScriptFunction KillRepairEffect() { mixin(MGF!("mKillRepairEffect", "Function TribesGame.TrDevice_RepairTool.KillRepairEffect")()); }
			ScriptFunction HasViewModeSwitched() { mixin(MGF!("mHasViewModeSwitched", "Function TribesGame.TrDevice_RepairTool.HasViewModeSwitched")()); }
			ScriptFunction SpawnRepairEffect() { mixin(MGF!("mSpawnRepairEffect", "Function TribesGame.TrDevice_RepairTool.SpawnRepairEffect")()); }
			ScriptFunction UpdateRepairEffect() { mixin(MGF!("mUpdateRepairEffect", "Function TribesGame.TrDevice_RepairTool.UpdateRepairEffect")()); }
			ScriptFunction UpdateDamageMaterial() { mixin(MGF!("mUpdateDamageMaterial", "Function TribesGame.TrDevice_RepairTool.UpdateDamageMaterial")()); }
			ScriptFunction ModifyInstantHitDamage() { mixin(MGF!("mModifyInstantHitDamage", "Function TribesGame.TrDevice_RepairTool.ModifyInstantHitDamage")()); }
			ScriptFunction HasAnyAmmo() { mixin(MGF!("mHasAnyAmmo", "Function TribesGame.TrDevice_RepairTool.HasAnyAmmo")()); }
		}
	}
	static struct Active
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_RepairTool.Active")()); }
	}
	static struct WeaponConstantFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_RepairTool.WeaponConstantFiring")()); }
	}
	@property final
	{
		auto ref
		{
			Vector m_Location() { mixin(MGPC!(Vector, 2212)()); }
			Vector m_Tangent() { mixin(MGPC!(Vector, 2200)()); }
			float m_fTargetHealth() { mixin(MGPC!(float, 2196)()); }
			float m_fDisplayOn() { mixin(MGPC!(float, 2192)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_pscRepairEffect'!
			float m_fVehicleRepairPercentage() { mixin(MGPC!(float, 2180)()); }
			float m_fPawnRepairPercentage() { mixin(MGPC!(float, 2176)()); }
			float m_fRepairPercentage() { mixin(MGPC!(float, 2172)()); }
		}
		bool m_bIsBehindView() { mixin(MGBPC!(2188, 0x1)()); }
		bool m_bIsBehindView(bool val) { mixin(MSBPC!(2188, 0x1)()); }
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
	bool GetRepairEndAndTangent(ref Vector EndLocation, ref Vector Tangent, Actor* HitActor)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = EndLocation;
		*cast(Vector*)&params[12] = Tangent;
		*cast(Actor*)&params[24] = HitActor;
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
