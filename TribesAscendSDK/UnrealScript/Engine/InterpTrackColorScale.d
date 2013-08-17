module UnrealScript.Engine.InterpTrackColorScale;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackColorScale : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackColorScale")()); }
	private static __gshared InterpTrackColorScale mDefaultProperties;
	@property final static InterpTrackColorScale DefaultProperties() { mixin(MGDPC!(InterpTrackColorScale, "InterpTrackColorScale Engine.Default__InterpTrackColorScale")()); }
}
