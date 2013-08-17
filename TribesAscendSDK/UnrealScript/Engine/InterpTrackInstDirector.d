module UnrealScript.Engine.InterpTrackInstDirector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.Actor;

extern(C++) interface InterpTrackInstDirector : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstDirector")()); }
	private static __gshared InterpTrackInstDirector mDefaultProperties;
	@property final static InterpTrackInstDirector DefaultProperties() { mixin(MGDPC!(InterpTrackInstDirector, "InterpTrackInstDirector Engine.Default__InterpTrackInstDirector")()); }
	@property final auto ref Actor OldViewTarget() { mixin(MGPC!(Actor, 60)()); }
}
