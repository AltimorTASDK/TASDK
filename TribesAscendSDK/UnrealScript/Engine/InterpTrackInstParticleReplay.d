module UnrealScript.Engine.InterpTrackInstParticleReplay;

import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstParticleReplay : InterpTrackInst
{
	public @property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
