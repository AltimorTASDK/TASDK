module UnrealScript.Engine.InterpTrackLinearColorProp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackLinearColorBase;

extern(C++) interface InterpTrackLinearColorProp : InterpTrackLinearColorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackLinearColorProp")()); }
	private static __gshared InterpTrackLinearColorProp mDefaultProperties;
	@property final static InterpTrackLinearColorProp DefaultProperties() { mixin(MGDPC!(InterpTrackLinearColorProp, "InterpTrackLinearColorProp Engine.Default__InterpTrackLinearColorProp")()); }
	@property final auto ref ScriptName PropertyName() { mixin(MGPC!(ScriptName, 148)()); }
}
