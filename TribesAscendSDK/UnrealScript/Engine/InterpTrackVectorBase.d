module UnrealScript.Engine.InterpTrackVectorBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackVectorBase : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackVectorBase")); }
	private static __gshared InterpTrackVectorBase mDefaultProperties;
	@property final static InterpTrackVectorBase DefaultProperties() { mixin(MGDPC("InterpTrackVectorBase", "InterpTrackVectorBase Engine.Default__InterpTrackVectorBase")); }
	@property final auto ref
	{
		float CurveTension() { mixin(MGPC("float", 144)); }
		UObject.InterpCurveVector VectorTrack() { mixin(MGPC("UObject.InterpCurveVector", 128)); }
	}
}
