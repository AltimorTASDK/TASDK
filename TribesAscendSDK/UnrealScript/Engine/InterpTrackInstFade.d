module UnrealScript.Engine.InterpTrackInstFade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstFade : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstFade")()); }
	private static __gshared InterpTrackInstFade mDefaultProperties;
	@property final static InterpTrackInstFade DefaultProperties() { mixin(MGDPC!(InterpTrackInstFade, "InterpTrackInstFade Engine.Default__InterpTrackInstFade")()); }
}
