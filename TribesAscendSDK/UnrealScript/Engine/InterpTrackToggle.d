module UnrealScript.Engine.InterpTrackToggle;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackToggle : InterpTrack
{
	enum ETrackToggleAction : ubyte
	{
		ETTA_Off = 0,
		ETTA_On = 1,
		ETTA_Toggle = 2,
		ETTA_Trigger = 3,
		ETTA_MAX = 4,
	}
	struct ToggleTrackKey
	{
		public @property final auto ref InterpTrackToggle.ETrackToggleAction ToggleAction() { return *cast(InterpTrackToggle.ETrackToggleAction*)(cast(size_t)&this + 4); }
		private ubyte __ToggleAction[1];
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Time[4];
	}
	public @property final auto ref ScriptArray!(InterpTrackToggle.ToggleTrackKey) ToggleTrack() { return *cast(ScriptArray!(InterpTrackToggle.ToggleTrackKey)*)(cast(size_t)cast(void*)this + 128); }
	public @property final bool bFireEventsWhenJumpingForwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x10) != 0; }
	public @property final bool bFireEventsWhenJumpingForwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x10; } return val; }
	public @property final bool bFireEventsWhenBackwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x8) != 0; }
	public @property final bool bFireEventsWhenBackwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x8; } return val; }
	public @property final bool bFireEventsWhenForwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
	public @property final bool bFireEventsWhenForwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
	public @property final bool bActivateWithJustAttachedFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
	public @property final bool bActivateWithJustAttachedFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
	public @property final bool bActivateSystemEachUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bActivateSystemEachUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
}
