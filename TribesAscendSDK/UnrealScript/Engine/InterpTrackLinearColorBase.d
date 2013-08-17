module UnrealScript.Engine.InterpTrackLinearColorBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackLinearColorBase : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackLinearColorBase")()); }
	private static __gshared InterpTrackLinearColorBase mDefaultProperties;
	@property final static InterpTrackLinearColorBase DefaultProperties() { mixin(MGDPC!(InterpTrackLinearColorBase, "InterpTrackLinearColorBase Engine.Default__InterpTrackLinearColorBase")()); }
	@property final auto ref
	{
		float CurveTension() { mixin(MGPC!("float", 144)()); }
		UObject.InterpCurveLinearColor LinearColorTrack() { mixin(MGPC!("UObject.InterpCurveLinearColor", 128)()); }
	}
}
