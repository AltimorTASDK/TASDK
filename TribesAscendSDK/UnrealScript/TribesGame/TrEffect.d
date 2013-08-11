module UnrealScript.TribesGame.TrEffect;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface TrEffect : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptClass m_EffectFormClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 76); }
			float m_fValue() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			TrObject.EffectCalcMethod m_eCalcMethodCode() { return *cast(TrObject.EffectCalcMethod*)(cast(size_t)cast(void*)this + 64); }
			int m_nEffectInstanceId() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool m_bRemovable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool m_bRemovable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	}
final:
	void Apply(Actor Target, Actor.ImpactInfo Impact)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87081], params.ptr, cast(void*)0);
	}
	void Remove(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87084], params.ptr, cast(void*)0);
	}
	bool CanBeApplied(Actor Target)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87086], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
