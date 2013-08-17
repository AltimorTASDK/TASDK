module UnrealScript.Engine.InterpTrackVisibility;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackVisibility : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackVisibility")()); }
	private static __gshared InterpTrackVisibility mDefaultProperties;
	@property final static InterpTrackVisibility DefaultProperties() { mixin(MGDPC!(InterpTrackVisibility, "InterpTrackVisibility Engine.Default__InterpTrackVisibility")()); }
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
		private ubyte __buffer__[6];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpTrackVisibility.VisibilityTrackKey")()); }
		@property final auto ref
		{
			InterpTrackVisibility.EVisibilityTrackCondition ActiveCondition() { mixin(MGPS!(InterpTrackVisibility.EVisibilityTrackCondition, 5)()); }
			InterpTrackVisibility.EVisibilityTrackAction Action() { mixin(MGPS!(InterpTrackVisibility.EVisibilityTrackAction, 4)()); }
			float Time() { mixin(MGPS!(float, 0)()); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(InterpTrackVisibility.VisibilityTrackKey) VisibilityTrack() { mixin(MGPC!(ScriptArray!(InterpTrackVisibility.VisibilityTrackKey), 128)()); }
		bool bFireEventsWhenJumpingForwards() { mixin(MGBPC!(140, 0x4)()); }
		bool bFireEventsWhenJumpingForwards(bool val) { mixin(MSBPC!(140, 0x4)()); }
		bool bFireEventsWhenBackwards() { mixin(MGBPC!(140, 0x2)()); }
		bool bFireEventsWhenBackwards(bool val) { mixin(MSBPC!(140, 0x2)()); }
		bool bFireEventsWhenForwards() { mixin(MGBPC!(140, 0x1)()); }
		bool bFireEventsWhenForwards(bool val) { mixin(MSBPC!(140, 0x1)()); }
	}
}
