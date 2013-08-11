module UnrealScript.Engine.InterpTrackInstSlomo;

import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstSlomo : InterpTrackInst
{
public extern(D):
	@property final auto ref float OldTimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
