module UnrealScript.TribesGame.TrDevice_PhaseRifle;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_PhaseRifle : TrDevice
{
public extern(D):
	@property final auto ref
	{
		float m_MaxEnergyConsumed() { return *cast(float*)(cast(size_t)cast(void*)this + 2152); }
		float m_DamagePerEnergy() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
	}
final:
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85704], cast(void*)0, cast(void*)0);
	}
	float ModifyInstantHitDamage(ubyte FiringMode, Actor.ImpactInfo Impact, float Damage)
	{
		ubyte params[92];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(float*)&params[84] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[85705], params.ptr, cast(void*)0);
		return *cast(float*)&params[88];
	}
}
