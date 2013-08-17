module UnrealScript.Engine.InterpTrackFade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackFade : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackFade")); }
	private static __gshared InterpTrackFade mDefaultProperties;
	@property final static InterpTrackFade DefaultProperties() { mixin(MGDPC("InterpTrackFade", "InterpTrackFade Engine.Default__InterpTrackFade")); }
	@property final
	{
		bool bPersistFade() { mixin(MGBPC(148, 0x1)); }
		bool bPersistFade(bool val) { mixin(MSBPC(148, 0x1)); }
	}
}
