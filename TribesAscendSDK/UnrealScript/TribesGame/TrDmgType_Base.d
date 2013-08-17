module UnrealScript.TribesGame.TrDmgType_Base;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UTGame.UTDamageType;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrDmgType_Base : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Base")()); }
	private static __gshared TrDmgType_Base mDefaultProperties;
	@property final static TrDmgType_Base DefaultProperties() { mixin(MGDPC!(TrDmgType_Base, "TrDmgType_Base TribesGame.Default__TrDmgType_Base")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCalculateRangeDamageFalloff;
			ScriptFunction mGetActorCausingDamage;
			ScriptFunction mModifyOverheadNumberLocation;
			ScriptFunction mGetDamageScale;
			ScriptFunction mGetRandomDeathAnimName;
			ScriptFunction mVehicleDamageScalingFor;
			ScriptFunction mGetCameraShake;
		}
		public @property static final
		{
			ScriptFunction CalculateRangeDamageFalloff() { mixin(MGF!("mCalculateRangeDamageFalloff", "Function TribesGame.TrDmgType_Base.CalculateRangeDamageFalloff")()); }
			ScriptFunction GetActorCausingDamage() { mixin(MGF!("mGetActorCausingDamage", "Function TribesGame.TrDmgType_Base.GetActorCausingDamage")()); }
			ScriptFunction ModifyOverheadNumberLocation() { mixin(MGF!("mModifyOverheadNumberLocation", "Function TribesGame.TrDmgType_Base.ModifyOverheadNumberLocation")()); }
			ScriptFunction GetDamageScale() { mixin(MGF!("mGetDamageScale", "Function TribesGame.TrDmgType_Base.GetDamageScale")()); }
			ScriptFunction GetRandomDeathAnimName() { mixin(MGF!("mGetRandomDeathAnimName", "Function TribesGame.TrDmgType_Base.GetRandomDeathAnimName")()); }
			ScriptFunction VehicleDamageScalingFor() { mixin(MGF!("mVehicleDamageScalingFor", "Function TribesGame.TrDmgType_Base.VehicleDamageScalingFor")()); }
			ScriptFunction GetCameraShake() { mixin(MGF!("mGetCameraShake", "Function TribesGame.TrDmgType_Base.GetCameraShake")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int DBWeaponId() { mixin(MGPC!(int, 300)()); }
			float m_fDamageMultiplierAgainstArmor() { mixin(MGPC!(float, 328)()); }
			float m_fDamageMultiplierAgainstNonArmoredObjectives() { mixin(MGPC!(float, 336)()); }
			float m_EnergyDrainAmount() { mixin(MGPC!(float, 396)()); }
			SoundCue m_RingingSound() { mixin(MGPC!(SoundCue, 380)()); }
			ScriptName m_nmTakeHitSoundMode() { mixin(MGPC!(ScriptName, 384)()); }
			float m_fGibRadius() { mixin(MGPC!(float, 348)()); }
			float m_fGibStrength() { mixin(MGPC!(float, 352)()); }
			PrimitiveComponent.ERadialImpulseFalloff m_GibFalloff() { mixin(MGPC!(PrimitiveComponent.ERadialImpulseFalloff, 356)()); }
			float m_fDamageMultiplierAgainstGenerators() { mixin(MGPC!(float, 332)()); }
			ScriptArray!(ScriptName) m_nmDeathAnimNames() { mixin(MGPC!(ScriptArray!(ScriptName), 360)()); }
			UObject.Vector2D m_v2DDamageNumbersMinMaxZ() { mixin(MGPC!(UObject.Vector2D, 416)()); }
			UObject.Vector2D m_v2DDamageNumbersMinMaxY() { mixin(MGPC!(UObject.Vector2D, 408)()); }
			UObject.Vector2D m_v2DDamageNumbersMinMaxX() { mixin(MGPC!(UObject.Vector2D, 400)()); }
			int m_nKillIconIndex() { mixin(MGPC!(int, 392)()); }
			ScriptName m_nmCameraShake() { mixin(MGPC!(ScriptName, 372)()); }
			float m_fDamageMultiplierAgainstShrike() { mixin(MGPC!(float, 340)()); }
			float m_fBulletDamageRange() { mixin(MGPC!(float, 324)()); }
			float m_fMinDamagePct() { mixin(MGPC!(float, 320)()); }
			float m_fMinDamageRangePct() { mixin(MGPC!(float, 316)()); }
			float m_fMaxDamageRangePct() { mixin(MGPC!(float, 312)()); }
			int DBWeaponTypeId() { mixin(MGPC!(int, 308)()); }
			int DBWeaponBaseId() { mixin(MGPC!(int, 304)()); }
		}
		bool m_bCausesGib() { mixin(MGBPC!(344, 0x1)()); }
		bool m_bCausesGib(bool val) { mixin(MSBPC!(344, 0x1)()); }
		bool m_bEnableMotors() { mixin(MGBPC!(344, 0x2)()); }
		bool m_bEnableMotors(bool val) { mixin(MSBPC!(344, 0x2)()); }
		bool bOffhandType() { mixin(MGBPC!(344, 0x10)()); }
		bool bOffhandType(bool val) { mixin(MSBPC!(344, 0x10)()); }
		bool m_bImpulsesFlags() { mixin(MGBPC!(344, 0x8)()); }
		bool m_bImpulsesFlags(bool val) { mixin(MSBPC!(344, 0x8)()); }
		bool m_bIgnoreDamageFalloff() { mixin(MGBPC!(344, 0x4)()); }
		bool m_bIgnoreDamageFalloff(bool val) { mixin(MSBPC!(344, 0x4)()); }
	}
final:
	static float CalculateRangeDamageFalloff(float Dist, float damageRange, TrPlayerController TrPCDamager, TrObject.TR_EQUIP_POINT EquipPoint, bool bMinDamageAlwaysApplied)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = Dist;
		*cast(float*)&params[4] = damageRange;
		*cast(TrPlayerController*)&params[8] = TrPCDamager;
		*cast(TrObject.TR_EQUIP_POINT*)&params[12] = EquipPoint;
		*cast(bool*)&params[16] = bMinDamageAlwaysApplied;
		StaticClass.ProcessEvent(Functions.CalculateRangeDamageFalloff, params.ptr, cast(void*)0);
		return *cast(float*)&params[20];
	}
	static Actor GetActorCausingDamage(Controller EventInstigator, Actor DamageCauser)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(Actor*)&params[4] = DamageCauser;
		StaticClass.ProcessEvent(Functions.GetActorCausingDamage, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[8];
	}
	static Vector ModifyOverheadNumberLocation(Vector InLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		StaticClass.ProcessEvent(Functions.ModifyOverheadNumberLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	static float GetDamageScale(Actor DamageCauser, float Dist, ScriptClass dmgType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = DamageCauser;
		*cast(float*)&params[4] = Dist;
		*cast(ScriptClass*)&params[8] = dmgType;
		StaticClass.ProcessEvent(Functions.GetDamageScale, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static ScriptName GetRandomDeathAnimName()
	{
		ubyte params[8];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetRandomDeathAnimName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	static float VehicleDamageScalingFor(Vehicle V)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		StaticClass.ProcessEvent(Functions.VehicleDamageScalingFor, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static void GetCameraShake(int Damage, ref ScriptName outCameraShakeName, ref float outScale)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(ScriptName*)&params[4] = outCameraShakeName;
		*cast(float*)&params[12] = outScale;
		StaticClass.ProcessEvent(Functions.GetCameraShake, params.ptr, cast(void*)0);
		*outCameraShakeName = *cast(ScriptName*)&params[4];
		*outScale = *cast(float*)&params[12];
	}
}
