module UnrealScript.UTGame.UTSeqCond_IsCarryingFlag;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceCondition;
import UnrealScript.UTGame.UTGameObjective;

extern(C++) interface UTSeqCond_IsCarryingFlag : SequenceCondition
{
public extern(D):
	@property final auto ref
	{
		UTGameObjective FlagBase() { return *cast(UTGameObjective*)(cast(size_t)cast(void*)this + 212); }
		Actor Target() { return *cast(Actor*)(cast(size_t)cast(void*)this + 208); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49190], cast(void*)0, cast(void*)0);
	}
}
