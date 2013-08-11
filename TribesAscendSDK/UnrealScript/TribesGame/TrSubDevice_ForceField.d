module UnrealScript.TribesGame.TrSubDevice_ForceField;

import ScriptClasses;
import UnrealScript.TribesGame.TrSubDevice;
import UnrealScript.Engine.Actor;

extern(C++) interface TrSubDevice_ForceField : TrSubDevice
{
public extern(D):
	@property final auto ref
	{
		float m_MinSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2160); }
		float m_MaxSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
		float m_MinDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2152); }
		float m_MaxDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
	}
final:
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113041], cast(void*)0, cast(void*)0);
	}
	float ModifyInstantHitDamage(ubyte FiringMode, Actor.ImpactInfo Impact, float Damage)
	{
		ubyte params[92];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(float*)&params[84] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113042], params.ptr, cast(void*)0);
		return *cast(float*)&params[88];
	}
}
