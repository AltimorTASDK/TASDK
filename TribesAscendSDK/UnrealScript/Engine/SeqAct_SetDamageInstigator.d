module UnrealScript.Engine.SeqAct_SetDamageInstigator;

import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetDamageInstigator : SequenceAction
{
	public @property final auto ref Actor DamageInstigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 232); }
}
