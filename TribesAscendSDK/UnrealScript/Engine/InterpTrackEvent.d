module UnrealScript.Engine.InterpTrackEvent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackEvent : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackEvent")()); }
	private static __gshared InterpTrackEvent mDefaultProperties;
	@property final static InterpTrackEvent DefaultProperties() { mixin(MGDPC!(InterpTrackEvent, "InterpTrackEvent Engine.Default__InterpTrackEvent")()); }
	struct EventTrackKey
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpTrackEvent.EventTrackKey")()); }
		@property final auto ref
		{
			ScriptName EventName() { mixin(MGPS!(ScriptName, 4)()); }
			float Time() { mixin(MGPS!(float, 0)()); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(InterpTrackEvent.EventTrackKey) EventTrack() { mixin(MGPC!(ScriptArray!(InterpTrackEvent.EventTrackKey), 128)()); }
		bool bFireEventsWhenJumpingForwards() { mixin(MGBPC!(140, 0x4)()); }
		bool bFireEventsWhenJumpingForwards(bool val) { mixin(MSBPC!(140, 0x4)()); }
		bool bFireEventsWhenBackwards() { mixin(MGBPC!(140, 0x2)()); }
		bool bFireEventsWhenBackwards(bool val) { mixin(MSBPC!(140, 0x2)()); }
		bool bFireEventsWhenForwards() { mixin(MGBPC!(140, 0x1)()); }
		bool bFireEventsWhenForwards(bool val) { mixin(MSBPC!(140, 0x1)()); }
	}
}
