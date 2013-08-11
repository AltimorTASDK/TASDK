module UnrealScript.Engine.SeqAct_SetPhysics;

import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetPhysics : SequenceAction
{
public extern(D):
	@property final auto ref Actor.EPhysics newPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 232); }
}
