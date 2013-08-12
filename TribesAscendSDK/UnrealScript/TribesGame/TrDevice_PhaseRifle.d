module UnrealScript.TribesGame.TrDevice_PhaseRifle;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_PhaseRifle : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_PhaseRifle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInstantFire;
			ScriptFunction mModifyInstantHitDamage;
		}
		public @property static final
		{
			ScriptFunction InstantFire() { return mInstantFire ? mInstantFire : (mInstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_PhaseRifle.InstantFire")); }
			ScriptFunction ModifyInstantHitDamage() { return mModifyInstantHitDamage ? mModifyInstantHitDamage : (mModifyInstantHitDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_PhaseRifle.ModifyInstantHitDamage")); }
		}
	}
	@property final auto ref
	{
		float m_MaxEnergyConsumed() { return *cast(float*)(cast(size_t)cast(void*)this + 2152); }
		float m_DamagePerEnergy() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
	}
final:
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
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
}
