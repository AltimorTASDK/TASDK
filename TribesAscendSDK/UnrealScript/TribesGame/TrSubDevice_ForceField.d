module UnrealScript.TribesGame.TrSubDevice_ForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSubDevice;
import UnrealScript.Engine.Actor;

extern(C++) interface TrSubDevice_ForceField : TrSubDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSubDevice_ForceField")()); }
	private static __gshared TrSubDevice_ForceField mDefaultProperties;
	@property final static TrSubDevice_ForceField DefaultProperties() { mixin(MGDPC!(TrSubDevice_ForceField, "TrSubDevice_ForceField TribesGame.Default__TrSubDevice_ForceField")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInstantFire;
			ScriptFunction mModifyInstantHitDamage;
		}
		public @property static final
		{
			ScriptFunction InstantFire() { mixin(MGF!("mInstantFire", "Function TribesGame.TrSubDevice_ForceField.InstantFire")()); }
			ScriptFunction ModifyInstantHitDamage() { mixin(MGF!("mModifyInstantHitDamage", "Function TribesGame.TrSubDevice_ForceField.ModifyInstantHitDamage")()); }
		}
	}
	@property final auto ref
	{
		float m_MinSpeed() { mixin(MGPC!(float, 2160)()); }
		float m_MaxSpeed() { mixin(MGPC!(float, 2156)()); }
		float m_MinDamage() { mixin(MGPC!(float, 2152)()); }
		float m_MaxDamage() { mixin(MGPC!(float, 2148)()); }
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
