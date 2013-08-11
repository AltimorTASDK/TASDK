module UnrealScript.UDKBase.UDKAnimBlendByPhysics;

import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByPhysics : UDKAnimBlendBase
{
	public @property final auto ref float PendingTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref int PendingChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref float LandBlendDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref int LastPhysics() { return *cast(int*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref int PhysicsMap() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
}
