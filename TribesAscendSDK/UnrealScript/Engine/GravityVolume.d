module UnrealScript.Engine.GravityVolume;

import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface GravityVolume : PhysicsVolume
{
	public @property final auto ref float GravityZ() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
}
