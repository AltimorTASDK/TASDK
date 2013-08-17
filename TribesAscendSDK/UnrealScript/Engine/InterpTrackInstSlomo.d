module UnrealScript.Engine.InterpTrackInstSlomo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstSlomo : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstSlomo")()); }
	private static __gshared InterpTrackInstSlomo mDefaultProperties;
	@property final static InterpTrackInstSlomo DefaultProperties() { mixin(MGDPC!(InterpTrackInstSlomo, "InterpTrackInstSlomo Engine.Default__InterpTrackInstSlomo")()); }
	@property final auto ref float OldTimeDilation() { mixin(MGPC!("float", 60)()); }
}
