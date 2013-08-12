module UnrealScript.TribesGame.TrDmgType_Base;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Base")); }
	private static __gshared TrDmgType_Base mDefaultProperties;
	@property final static TrDmgType_Base DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Base)("TrDmgType_Base TribesGame.Default__TrDmgType_Base")); }
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
			ScriptFunction CalculateRangeDamageFalloff() { return mCalculateRangeDamageFalloff ? mCalculateRangeDamageFalloff : (mCalculateRangeDamageFalloff = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDmgType_Base.CalculateRangeDamageFalloff")); }
			ScriptFunction GetActorCausingDamage() { return mGetActorCausingDamage ? mGetActorCausingDamage : (mGetActorCausingDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDmgType_Base.GetActorCausingDamage")); }
			ScriptFunction ModifyOverheadNumberLocation() { return mModifyOverheadNumberLocation ? mModifyOverheadNumberLocation : (mModifyOverheadNumberLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDmgType_Base.ModifyOverheadNumberLocation")); }
			ScriptFunction GetDamageScale() { return mGetDamageScale ? mGetDamageScale : (mGetDamageScale = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDmgType_Base.GetDamageScale")); }
			ScriptFunction GetRandomDeathAnimName() { return mGetRandomDeathAnimName ? mGetRandomDeathAnimName : (mGetRandomDeathAnimName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDmgType_Base.GetRandomDeathAnimName")); }
			ScriptFunction VehicleDamageScalingFor() { return mVehicleDamageScalingFor ? mVehicleDamageScalingFor : (mVehicleDamageScalingFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDmgType_Base.VehicleDamageScalingFor")); }
			ScriptFunction GetCameraShake() { return mGetCameraShake ? mGetCameraShake : (mGetCameraShake = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDmgType_Base.GetCameraShake")); }
		}
	}
	@property final
	{
		auto ref
		{
			int DBWeaponId() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
			float m_fDamageMultiplierAgainstArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
			float m_fDamageMultiplierAgainstNonArmoredObjectives() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
			float m_EnergyDrainAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 396); }
			SoundCue m_RingingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 380); }
			ScriptName m_nmTakeHitSoundMode() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 384); }
			float m_fGibRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
			float m_fGibStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 352); }
			PrimitiveComponent.ERadialImpulseFalloff m_GibFalloff() { return *cast(PrimitiveComponent.ERadialImpulseFalloff*)(cast(size_t)cast(void*)this + 356); }
			float m_fDamageMultiplierAgainstGenerators() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
			ScriptArray!(ScriptName) m_nmDeathAnimNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 360); }
			UObject.Vector2D m_v2DDamageNumbersMinMaxZ() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 416); }
			UObject.Vector2D m_v2DDamageNumbersMinMaxY() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 408); }
			UObject.Vector2D m_v2DDamageNumbersMinMaxX() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 400); }
			int m_nKillIconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 392); }
			ScriptName m_nmCameraShake() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 372); }
			float m_fDamageMultiplierAgainstShrike() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
			float m_fBulletDamageRange() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
			float m_fMinDamagePct() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
			float m_fMinDamageRangePct() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			float m_fMaxDamageRangePct() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			int DBWeaponTypeId() { return *cast(int*)(cast(size_t)cast(void*)this + 308); }
			int DBWeaponBaseId() { return *cast(int*)(cast(size_t)cast(void*)this + 304); }
		}
		bool m_bCausesGib() { return (*cast(uint*)(cast(size_t)cast(void*)this + 344) & 0x1) != 0; }
		bool m_bCausesGib(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 344) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 344) &= ~0x1; } return val; }
		bool m_bEnableMotors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 344) & 0x2) != 0; }
		bool m_bEnableMotors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 344) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 344) &= ~0x2; } return val; }
		bool bOffhandType() { return (*cast(uint*)(cast(size_t)cast(void*)this + 344) & 0x10) != 0; }
		bool bOffhandType(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 344) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 344) &= ~0x10; } return val; }
		bool m_bImpulsesFlags() { return (*cast(uint*)(cast(size_t)cast(void*)this + 344) & 0x8) != 0; }
		bool m_bImpulsesFlags(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 344) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 344) &= ~0x8; } return val; }
		bool m_bIgnoreDamageFalloff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 344) & 0x4) != 0; }
		bool m_bIgnoreDamageFalloff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 344) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 344) &= ~0x4; } return val; }
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
	static void GetCameraShake(int Damage, ScriptName* outCameraShakeName, float* outScale)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(ScriptName*)&params[4] = *outCameraShakeName;
		*cast(float*)&params[12] = *outScale;
		StaticClass.ProcessEvent(Functions.GetCameraShake, params.ptr, cast(void*)0);
		*outCameraShakeName = *cast(ScriptName*)&params[4];
		*outScale = *cast(float*)&params[12];
	}
}
