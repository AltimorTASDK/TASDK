module UnrealScript.Engine.InterpTrackInstEvent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstEvent : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstEvent")()); }
	private static __gshared InterpTrackInstEvent mDefaultProperties;
	@property final static InterpTrackInstEvent DefaultProperties() { mixin(MGDPC!(InterpTrackInstEvent, "InterpTrackInstEvent Engine.Default__InterpTrackInstEvent")()); }
	@property final auto ref float LastUpdatePosition() { mixin(MGPC!(float, 60)()); }
}
