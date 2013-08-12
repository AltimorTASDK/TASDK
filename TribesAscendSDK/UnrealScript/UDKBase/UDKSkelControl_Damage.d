module UnrealScript.UDKBase.UDKSkelControl_Damage;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface UDKSkelControl_Damage : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_Damage")); }
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
			ScriptFunction BreakApart() { return mBreakApart ? mBreakApart : (mBreakApart = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKSkelControl_Damage.BreakApart")); }
			ScriptFunction BreakApartOnDeath() { return mBreakApartOnDeath ? mBreakApartOnDeath : (mBreakApartOnDeath = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKSkelControl_Damage.BreakApartOnDeath")); }
			ScriptFunction RestorePart() { return mRestorePart ? mRestorePart : (mRestorePart = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKSkelControl_Damage.RestorePart")); }
		}
	}
	@property final
	{
		auto ref
		{
			ParticleSystem PS_DeathTrail() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 372); }
			ParticleSystem PS_DeathOnBreak() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 368); }
			Vector DeathScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 356); }
			Vector DeathImpulseDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 344); }
			StaticMesh DeathStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 340); }
			float DeathBoneScale() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
			float DeathPercentToActuallySpawn() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
			Vector BreakSpeed() { return *cast(Vector*)(cast(size_t)cast(void*)this + 320); }
			float OwnerVehicleMaxHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			float BreakTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			ScriptName BrokenBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 304); }
			ParticleSystem PS_DamageTrail() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 300); }
			ParticleSystem PS_DamageOnBreak() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 296); }
			Vector DamageScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 284); }
			Vector DefaultBreakDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 272); }
			float BreakTime() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
			float BreakThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			StaticMesh BreakMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 260); }
			float ActivationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			int DamageMax() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
			float DamageBoneScale() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float HealthPerc() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			UDKVehicle OwnerVehicle() { return *cast(UDKVehicle*)(cast(size_t)cast(void*)this + 240); }
		}
		bool bOnDeathUseForSecondaryExplosion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x80) != 0; }
		bool bOnDeathUseForSecondaryExplosion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x80; } return val; }
		bool bOnDeathActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x40) != 0; }
		bool bOnDeathActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x40; } return val; }
		bool bDeathCamFollows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x20) != 0; }
		bool bDeathCamFollows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x20; } return val; }
		bool bIsBreaking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x10) != 0; }
		bool bIsBreaking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x10; } return val; }
		bool bIsBroken() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8) != 0; }
		bool bIsBroken(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8; } return val; }
		bool bControlStrFollowsHealth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
		bool bControlStrFollowsHealth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
		bool bOnDamageActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
		bool bOnDamageActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
		bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
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
