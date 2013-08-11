module UnrealScript.Engine.InterpTrackVisibility;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackVisibility : InterpTrack
{
	enum EVisibilityTrackCondition : ubyte
	{
		EVTC_Always = 0,
		EVTC_GoreEnabled = 1,
		EVTC_GoreDisabled = 2,
		EVTC_MAX = 3,
	}
	enum EVisibilityTrackAction : ubyte
	{
		EVTA_Hide = 0,
		EVTA_Show = 1,
		EVTA_Toggle = 2,
		EVTA_MAX = 3,
	}
	struct VisibilityTrackKey
	{
		public @property final auto ref InterpTrackVisibility.EVisibilityTrackCondition ActiveCondition() { return *cast(InterpTrackVisibility.EVisibilityTrackCondition*)(cast(size_t)&this + 5); }
		private ubyte __ActiveCondition[1];
		public @property final auto ref InterpTrackVisibility.EVisibilityTrackAction Action() { return *cast(InterpTrackVisibility.EVisibilityTrackAction*)(cast(size_t)&this + 4); }
		private ubyte __Action[1];
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Time[4];
	}
	public @property final auto ref ScriptArray!(InterpTrackVisibility.VisibilityTrackKey) VisibilityTrack() { return *cast(ScriptArray!(InterpTrackVisibility.VisibilityTrackKey)*)(cast(size_t)cast(void*)this + 128); }
	public @property final bool bFireEventsWhenJumpingForwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
	public @property final bool bFireEventsWhenJumpingForwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
	public @property final bool bFireEventsWhenBackwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
	public @property final bool bFireEventsWhenBackwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
	public @property final bool bFireEventsWhenForwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bFireEventsWhenForwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
}
