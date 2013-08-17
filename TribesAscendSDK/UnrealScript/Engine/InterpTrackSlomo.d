module UnrealScript.Engine.InterpTrackSlomo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackSlomo : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackSlomo")); }
	private static __gshared InterpTrackSlomo mDefaultProperties;
	@property final static InterpTrackSlomo DefaultProperties() { mixin(MGDPC("InterpTrackSlomo", "InterpTrackSlomo Engine.Default__InterpTrackSlomo")); }
}
