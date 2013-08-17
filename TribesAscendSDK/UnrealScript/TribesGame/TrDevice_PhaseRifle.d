module UnrealScript.TribesGame.TrDevice_PhaseRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_PhaseRifle : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_PhaseRifle")()); }
	private static __gshared TrDevice_PhaseRifle mDefaultProperties;
	@property final static TrDevice_PhaseRifle DefaultProperties() { mixin(MGDPC!(TrDevice_PhaseRifle, "TrDevice_PhaseRifle TribesGame.Default__TrDevice_PhaseRifle")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInstantFire;
			ScriptFunction mModifyInstantHitDamage;
		}
		public @property static final
		{
			ScriptFunction InstantFire() { mixin(MGF!("mInstantFire", "Function TribesGame.TrDevice_PhaseRifle.InstantFire")()); }
			ScriptFunction ModifyInstantHitDamage() { mixin(MGF!("mModifyInstantHitDamage", "Function TribesGame.TrDevice_PhaseRifle.ModifyInstantHitDamage")()); }
		}
	}
	@property final auto ref
	{
		float m_MaxEnergyConsumed() { mixin(MGPC!(float, 2152)()); }
		float m_DamagePerEnergy() { mixin(MGPC!(float, 2148)()); }
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
