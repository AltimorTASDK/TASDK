module UnrealScript.Engine.InterpTrackInstDirector;

import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.Actor;

extern(C++) interface InterpTrackInstDirector : InterpTrackInst
{
public extern(D):
	@property final auto ref Actor OldViewTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 60); }
}
