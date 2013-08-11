module UnrealScript.Engine.InterpTrackInstFloatParticleParam;

import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstFloatParticleParam : InterpTrackInst
{
public extern(D):
	@property final auto ref float ResetFloat() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
