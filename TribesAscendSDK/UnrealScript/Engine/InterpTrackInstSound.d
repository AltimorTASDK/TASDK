module UnrealScript.Engine.InterpTrackInstSound;

import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstSound : InterpTrackInst
{
public extern(D):
	@property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
