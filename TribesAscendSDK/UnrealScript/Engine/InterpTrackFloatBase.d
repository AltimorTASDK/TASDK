module UnrealScript.Engine.InterpTrackFloatBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackFloatBase : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackFloatBase")); }
	private static __gshared InterpTrackFloatBase mDefaultProperties;
	@property final static InterpTrackFloatBase DefaultProperties() { mixin(MGDPC("InterpTrackFloatBase", "InterpTrackFloatBase Engine.Default__InterpTrackFloatBase")); }
	@property final auto ref
	{
		float CurveTension() { mixin(MGPC("float", 144)); }
		UObject.InterpCurveFloat FloatTrack() { mixin(MGPC("UObject.InterpCurveFloat", 128)); }
	}
}
