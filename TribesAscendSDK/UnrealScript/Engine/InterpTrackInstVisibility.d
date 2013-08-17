module UnrealScript.Engine.InterpTrackInstVisibility;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.InterpTrackVisibility;

extern(C++) interface InterpTrackInstVisibility : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstVisibility")()); }
	private static __gshared InterpTrackInstVisibility mDefaultProperties;
	@property final static InterpTrackInstVisibility DefaultProperties() { mixin(MGDPC!(InterpTrackInstVisibility, "InterpTrackInstVisibility Engine.Default__InterpTrackInstVisibility")()); }
	@property final auto ref
	{
		float LastUpdatePosition() { mixin(MGPC!("float", 64)()); }
		InterpTrackVisibility.EVisibilityTrackAction Action() { mixin(MGPC!("InterpTrackVisibility.EVisibilityTrackAction", 60)()); }
	}
}
