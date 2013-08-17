module UnrealScript.Engine.InterpTrackInstAnimControl;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstAnimControl : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstAnimControl")()); }
	private static __gshared InterpTrackInstAnimControl mDefaultProperties;
	@property final static InterpTrackInstAnimControl DefaultProperties() { mixin(MGDPC!(InterpTrackInstAnimControl, "InterpTrackInstAnimControl Engine.Default__InterpTrackInstAnimControl")()); }
	@property final auto ref float LastUpdatePosition() { mixin(MGPC!(float, 60)()); }
}
