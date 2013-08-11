module UnrealScript.Engine.InterpTrackEvent;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackEvent : InterpTrack
{
	struct EventTrackKey
	{
		public @property final auto ref ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __EventName[8];
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Time[4];
	}
	public @property final auto ref ScriptArray!(InterpTrackEvent.EventTrackKey) EventTrack() { return *cast(ScriptArray!(InterpTrackEvent.EventTrackKey)*)(cast(size_t)cast(void*)this + 128); }
	public @property final bool bFireEventsWhenJumpingForwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
	public @property final bool bFireEventsWhenJumpingForwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
	public @property final bool bFireEventsWhenBackwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
	public @property final bool bFireEventsWhenBackwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
	public @property final bool bFireEventsWhenForwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bFireEventsWhenForwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
}
