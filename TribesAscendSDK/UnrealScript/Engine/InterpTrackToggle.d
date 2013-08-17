module UnrealScript.Engine.InterpTrackToggle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackToggle : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackToggle")()); }
	private static __gshared InterpTrackToggle mDefaultProperties;
	@property final static InterpTrackToggle DefaultProperties() { mixin(MGDPC!(InterpTrackToggle, "InterpTrackToggle Engine.Default__InterpTrackToggle")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpTrackToggle.ToggleTrackKey")()); }
		@property final auto ref
		{
			InterpTrackToggle.ETrackToggleAction ToggleAction() { mixin(MGPS!(InterpTrackToggle.ETrackToggleAction, 4)()); }
			float Time() { mixin(MGPS!(float, 0)()); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(InterpTrackToggle.ToggleTrackKey) ToggleTrack() { mixin(MGPC!(ScriptArray!(InterpTrackToggle.ToggleTrackKey), 128)()); }
		bool bFireEventsWhenJumpingForwards() { mixin(MGBPC!(140, 0x10)()); }
		bool bFireEventsWhenJumpingForwards(bool val) { mixin(MSBPC!(140, 0x10)()); }
		bool bFireEventsWhenBackwards() { mixin(MGBPC!(140, 0x8)()); }
		bool bFireEventsWhenBackwards(bool val) { mixin(MSBPC!(140, 0x8)()); }
		bool bFireEventsWhenForwards() { mixin(MGBPC!(140, 0x4)()); }
		bool bFireEventsWhenForwards(bool val) { mixin(MSBPC!(140, 0x4)()); }
		bool bActivateWithJustAttachedFlag() { mixin(MGBPC!(140, 0x2)()); }
		bool bActivateWithJustAttachedFlag(bool val) { mixin(MSBPC!(140, 0x2)()); }
		bool bActivateSystemEachUpdate() { mixin(MGBPC!(140, 0x1)()); }
		bool bActivateSystemEachUpdate(bool val) { mixin(MSBPC!(140, 0x1)()); }
	}
}
