module UnrealScript.Engine.InterpTrackToggle;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackToggle : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackToggle")); }
	private static __gshared InterpTrackToggle mDefaultProperties;
	@property final static InterpTrackToggle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackToggle)("InterpTrackToggle Engine.Default__InterpTrackToggle")); }
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
		private ubyte __buffer__[5];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrackToggle.ToggleTrackKey")); }
		@property final auto ref
		{
			InterpTrackToggle.ETrackToggleAction ToggleAction() { return *cast(InterpTrackToggle.ETrackToggleAction*)(cast(size_t)&this + 4); }
			float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(InterpTrackToggle.ToggleTrackKey) ToggleTrack() { return *cast(ScriptArray!(InterpTrackToggle.ToggleTrackKey)*)(cast(size_t)cast(void*)this + 128); }
		bool bFireEventsWhenJumpingForwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x10) != 0; }
		bool bFireEventsWhenJumpingForwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x10; } return val; }
		bool bFireEventsWhenBackwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x8) != 0; }
		bool bFireEventsWhenBackwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x8; } return val; }
		bool bFireEventsWhenForwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
		bool bFireEventsWhenForwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
		bool bActivateWithJustAttachedFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
		bool bActivateWithJustAttachedFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
		bool bActivateSystemEachUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bActivateSystemEachUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
}
