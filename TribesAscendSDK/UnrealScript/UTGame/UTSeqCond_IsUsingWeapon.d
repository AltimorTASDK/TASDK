module UnrealScript.UTGame.UTSeqCond_IsUsingWeapon;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_IsUsingWeapon : SequenceCondition
{
	public @property final bool bMustBeImpactHammer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x2) != 0; }
	public @property final bool bMustBeImpactHammer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x2; } return val; }
	public @property final bool bAllowSubclass() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x1) != 0; }
	public @property final bool bAllowSubclass(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x1; } return val; }
	public @property final auto ref ScriptClass RequiredWeapon() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref Actor Target() { return *cast(Actor*)(cast(size_t)cast(void*)this + 208); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49204], cast(void*)0, cast(void*)0);
	}
}
