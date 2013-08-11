module UnrealScript.Engine.InterpTrackInstVisibility;

import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.InterpTrackVisibility;

extern(C++) interface InterpTrackInstVisibility : InterpTrackInst
{
	public @property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref InterpTrackVisibility.EVisibilityTrackAction Action() { return *cast(InterpTrackVisibility.EVisibilityTrackAction*)(cast(size_t)cast(void*)this + 60); }
}
