module UnrealScript.Engine.InterpTrackInstColorScale;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstColorScale : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInstColorScale")); }
	private static __gshared InterpTrackInstColorScale mDefaultProperties;
	@property final static InterpTrackInstColorScale DefaultProperties() { mixin(MGDPC("InterpTrackInstColorScale", "InterpTrackInstColorScale Engine.Default__InterpTrackInstColorScale")); }
}
