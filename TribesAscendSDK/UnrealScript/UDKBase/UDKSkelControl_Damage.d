module UnrealScript.UDKBase.UDKSkelControl_Damage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface UDKSkelControl_Damage : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_Damage")()); }
	private static __gshared UDKSkelControl_Damage mDefaultProperties;
	@property final static UDKSkelControl_Damage DefaultProperties() { mixin(MGDPC!(UDKSkelControl_Damage, "UDKSkelControl_Damage UDKBase.Default__UDKSkelControl_Damage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBreakApart;
			ScriptFunction mBreakApartOnDeath;
			ScriptFunction mRestorePart;
		}
		public @property static final
		{
			ScriptFunction BreakApart() { mixin(MGF!("mBreakApart", "Function UDKBase.UDKSkelControl_Damage.BreakApart")()); }
			ScriptFunction BreakApartOnDeath() { mixin(MGF!("mBreakApartOnDeath", "Function UDKBase.UDKSkelControl_Damage.BreakApartOnDeath")()); }
			ScriptFunction RestorePart() { mixin(MGF!("mRestorePart", "Function UDKBase.UDKSkelControl_Damage.RestorePart")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ParticleSystem PS_DeathTrail() { mixin(MGPC!(ParticleSystem, 372)()); }
			ParticleSystem PS_DeathOnBreak() { mixin(MGPC!(ParticleSystem, 368)()); }
			Vector DeathScale() { mixin(MGPC!(Vector, 356)()); }
			Vector DeathImpulseDir() { mixin(MGPC!(Vector, 344)()); }
			StaticMesh DeathStaticMesh() { mixin(MGPC!(StaticMesh, 340)()); }
			float DeathBoneScale() { mixin(MGPC!(float, 336)()); }
			float DeathPercentToActuallySpawn() { mixin(MGPC!(float, 332)()); }
			Vector BreakSpeed() { mixin(MGPC!(Vector, 320)()); }
			float OwnerVehicleMaxHealth() { mixin(MGPC!(float, 316)()); }
			float BreakTimer() { mixin(MGPC!(float, 312)()); }
			ScriptName BrokenBone() { mixin(MGPC!(ScriptName, 304)()); }
			ParticleSystem PS_DamageTrail() { mixin(MGPC!(ParticleSystem, 300)()); }
			ParticleSystem PS_DamageOnBreak() { mixin(MGPC!(ParticleSystem, 296)()); }
			Vector DamageScale() { mixin(MGPC!(Vector, 284)()); }
			Vector DefaultBreakDir() { mixin(MGPC!(Vector, 272)()); }
			float BreakTime() { mixin(MGPC!(float, 268)()); }
			float BreakThreshold() { mixin(MGPC!(float, 264)()); }
			StaticMesh BreakMesh() { mixin(MGPC!(StaticMesh, 260)()); }
			float ActivationThreshold() { mixin(MGPC!(float, 256)()); }
			int DamageMax() { mixin(MGPC!(int, 252)()); }
			float DamageBoneScale() { mixin(MGPC!(float, 248)()); }
			float HealthPerc() { mixin(MGPC!(float, 244)()); }
			UDKVehicle OwnerVehicle() { mixin(MGPC!(UDKVehicle, 240)()); }
		}
		bool bOnDeathUseForSecondaryExplosion() { mixin(MGBPC!(236, 0x80)()); }
		bool bOnDeathUseForSecondaryExplosion(bool val) { mixin(MSBPC!(236, 0x80)()); }
		bool bOnDeathActive() { mixin(MGBPC!(236, 0x40)()); }
		bool bOnDeathActive(bool val) { mixin(MSBPC!(236, 0x40)()); }
		bool bDeathCamFollows() { mixin(MGBPC!(236, 0x20)()); }
		bool bDeathCamFollows(bool val) { mixin(MSBPC!(236, 0x20)()); }
		bool bIsBreaking() { mixin(MGBPC!(236, 0x10)()); }
		bool bIsBreaking(bool val) { mixin(MSBPC!(236, 0x10)()); }
		bool bIsBroken() { mixin(MGBPC!(236, 0x8)()); }
		bool bIsBroken(bool val) { mixin(MSBPC!(236, 0x8)()); }
		bool bControlStrFollowsHealth() { mixin(MGBPC!(236, 0x4)()); }
		bool bControlStrFollowsHealth(bool val) { mixin(MSBPC!(236, 0x4)()); }
		bool bOnDamageActive() { mixin(MGBPC!(236, 0x2)()); }
		bool bOnDamageActive(bool val) { mixin(MSBPC!(236, 0x2)()); }
		bool bInitialized() { mixin(MGBPC!(236, 0x1)()); }
		bool bInitialized(bool val) { mixin(MSBPC!(236, 0x1)()); }
	}
final:
	void BreakApart(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakApart, params.ptr, cast(void*)0);
	}
	void BreakApartOnDeath(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakApartOnDeath, params.ptr, cast(void*)0);
	}
	float RestorePart()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RestorePart, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
