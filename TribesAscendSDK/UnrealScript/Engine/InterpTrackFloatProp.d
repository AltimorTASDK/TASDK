module UnrealScript.Engine.InterpTrackFloatProp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackFloatProp : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackFloatProp")()); }
	private static __gshared InterpTrackFloatProp mDefaultProperties;
	@property final static InterpTrackFloatProp DefaultProperties() { mixin(MGDPC!(InterpTrackFloatProp, "InterpTrackFloatProp Engine.Default__InterpTrackFloatProp")()); }
	@property final auto ref ScriptName PropertyName() { mixin(MGPC!("ScriptName", 148)()); }
}
