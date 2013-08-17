module UnrealScript.Engine.InterpTrackInst;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrackInst : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInst")); }
	private static __gshared InterpTrackInst mDefaultProperties;
	@property final static InterpTrackInst DefaultProperties() { mixin(MGDPC("InterpTrackInst", "InterpTrackInst Engine.Default__InterpTrackInst")); }
}
