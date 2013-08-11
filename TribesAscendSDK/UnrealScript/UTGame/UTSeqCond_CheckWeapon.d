module UnrealScript.UTGame.UTSeqCond_CheckWeapon;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_CheckWeapon : SequenceCondition
{
public extern(D):
	@property final auto ref
	{
		ScriptClass TestForWeaponClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 212); }
		Actor Target() { return *cast(Actor*)(cast(size_t)cast(void*)this + 208); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49167], cast(void*)0, cast(void*)0);
	}
}
