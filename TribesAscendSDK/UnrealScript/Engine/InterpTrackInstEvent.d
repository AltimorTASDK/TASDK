module UnrealScript.Engine.InterpTrackInstEvent;

import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstEvent : InterpTrackInst
{
public extern(D):
	@property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
