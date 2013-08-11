module UnrealScript.Engine.PhysicsLODVerticalEmitter;

import UnrealScript.Core.UObject;

extern(C++) interface PhysicsLODVerticalEmitter : UObject
{
	public @property final auto ref int ParticlePercentage() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
}
