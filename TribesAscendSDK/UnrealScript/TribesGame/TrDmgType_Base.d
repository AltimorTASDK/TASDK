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
	public @property final auto ref int DBWeaponId() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref float m_fDamageMultiplierAgainstArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref float m_fDamageMultiplierAgainstNonArmoredObjectives() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref float m_EnergyDrainAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref SoundCue m_RingingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref ScriptName m_nmTakeHitSoundMode() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 384); }
	public @property final bool m_bCausesGib() { return (*cast(uint*)(cast(size_t)cast(void*)this + 344) & 0x1) != 0; }
	public @property final bool m_bCausesGib(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 344) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 344) &= ~0x1; } return val; }
	public @property final auto ref float m_fGibRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref float m_fGibStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref PrimitiveComponent.ERadialImpulseFalloff m_GibFalloff() { return *cast(PrimitiveComponent.ERadialImpulseFalloff*)(cast(size_t)cast(void*)this + 356); }
	public @property final bool m_bEnableMotors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 344) & 0x2) != 0; }
	public @property final bool m_bEnableMotors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 344) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 344) &= ~0x2; } return val; }
	public @property final auto ref float m_fDamageMultiplierAgainstGenerators() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref ScriptArray!(ScriptName) m_nmDeathAnimNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref UObject.Vector2D m_v2DDamageNumbersMinMaxZ() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref UObject.Vector2D m_v2DDamageNumbersMinMaxY() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref UObject.Vector2D m_v2DDamageNumbersMinMaxX() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref int m_nKillIconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref ScriptName m_nmCameraShake() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 372); }
	public @property final bool bOffhandType() { return (*cast(uint*)(cast(size_t)cast(void*)this + 344) & 0x10) != 0; }
	public @property final bool bOffhandType(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 344) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 344) &= ~0x10; } return val; }
	public @property final bool m_bImpulsesFlags() { return (*cast(uint*)(cast(size_t)cast(void*)this + 344) & 0x8) != 0; }
	public @property final bool m_bImpulsesFlags(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 344) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 344) &= ~0x8; } return val; }
	public @property final bool m_bIgnoreDamageFalloff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 344) & 0x4) != 0; }
	public @property final bool m_bIgnoreDamageFalloff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 344) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 344) &= ~0x4; } return val; }
	public @property final auto ref float m_fDamageMultiplierAgainstShrike() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref float m_fBulletDamageRange() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref float m_fMinDamagePct() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float m_fMinDamageRangePct() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float m_fMaxDamageRangePct() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref int DBWeaponTypeId() { return *cast(int*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref int DBWeaponBaseId() { return *cast(int*)(cast(size_t)cast(void*)this + 304); }
	final float CalculateRangeDamageFalloff(float Dist, float damageRange, TrPlayerController TrPCDamager, TrObject.TR_EQUIP_POINT EquipPoint, bool bMinDamageAlwaysApplied)
	{
		ubyte params[21];
		params[] = 0;
		*cast(float*)params.ptr = Dist;
		*cast(float*)&params[4] = damageRange;
		*cast(TrPlayerController*)&params[8] = TrPCDamager;
		*cast(TrObject.TR_EQUIP_POINT*)&params[12] = EquipPoint;
		*cast(bool*)&params[16] = bMinDamageAlwaysApplied;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67461], params.ptr, cast(void*)0);
		return *cast(float*)&params[20];
	}
	final Actor GetActorCausingDamage(Controller EventInstigator, Actor DamageCauser)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(Actor*)&params[4] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71538], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[8];
	}
	final Vector ModifyOverheadNumberLocation(Vector InLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71540], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final float GetDamageScale(Actor DamageCauser, float Dist, ScriptClass dmgType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = DamageCauser;
		*cast(float*)&params[4] = Dist;
		*cast(ScriptClass*)&params[8] = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71815], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final ScriptName GetRandomDeathAnimName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73055], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final float VehicleDamageScalingFor(Vehicle V)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86444], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void GetCameraShake(int Damage, ScriptName* outCameraShakeName, float* outScale)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(ScriptName*)&params[4] = *outCameraShakeName;
		*cast(float*)&params[12] = *outScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86471], params.ptr, cast(void*)0);
		*outCameraShakeName = *cast(ScriptName*)&params[4];
		*outScale = *cast(float*)&params[12];
	}
}
