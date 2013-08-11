module UnrealScript.Engine.InterpTrackInstAnimControl;

import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstAnimControl : InterpTrackInst
{
public extern(D):
	@property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
