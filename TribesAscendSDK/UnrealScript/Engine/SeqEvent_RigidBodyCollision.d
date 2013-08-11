module UnrealScript.Engine.SeqEvent_RigidBodyCollision;

import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_RigidBodyCollision : SequenceEvent
{
public extern(D):
	@property final auto ref float MinCollisionVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
}
