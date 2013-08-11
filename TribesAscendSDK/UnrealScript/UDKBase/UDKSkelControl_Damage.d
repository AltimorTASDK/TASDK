module UnrealScript.UDKBase.UDKSkelControl_Damage;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface UDKSkelControl_Damage : SkelControlSingleBone
{
	public @property final auto ref ParticleSystem PS_DeathTrail() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref ParticleSystem PS_DeathOnBreak() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref Vector DeathScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref Vector DeathImpulseDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref StaticMesh DeathStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref float DeathBoneScale() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref float DeathPercentToActuallySpawn() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref Vector BreakSpeed() { return *cast(Vector*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float OwnerVehicleMaxHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float BreakTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref ScriptName BrokenBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref ParticleSystem PS_DamageTrail() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref ParticleSystem PS_DamageOnBreak() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref Vector DamageScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref Vector DefaultBreakDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref float BreakTime() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float BreakThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref StaticMesh BreakMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float ActivationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref int DamageMax() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float DamageBoneScale() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float HealthPerc() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref UDKVehicle OwnerVehicle() { return *cast(UDKVehicle*)(cast(size_t)cast(void*)this + 240); }
	public @property final bool bOnDeathUseForSecondaryExplosion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x80) != 0; }
	public @property final bool bOnDeathUseForSecondaryExplosion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x80; } return val; }
	public @property final bool bOnDeathActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x40) != 0; }
	public @property final bool bOnDeathActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x40; } return val; }
	public @property final bool bDeathCamFollows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x20) != 0; }
	public @property final bool bDeathCamFollows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x20; } return val; }
	public @property final bool bIsBreaking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x10) != 0; }
	public @property final bool bIsBreaking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x10; } return val; }
	public @property final bool bIsBroken() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8) != 0; }
	public @property final bool bIsBroken(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8; } return val; }
	public @property final bool bControlStrFollowsHealth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
	public @property final bool bControlStrFollowsHealth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
	public @property final bool bOnDamageActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
	public @property final bool bOnDamageActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
	public @property final bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
	public @property final bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	final void BreakApart(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35371], params.ptr, cast(void*)0);
	}
	final void BreakApartOnDeath(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35374], params.ptr, cast(void*)0);
	}
	final float RestorePart()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35377], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
