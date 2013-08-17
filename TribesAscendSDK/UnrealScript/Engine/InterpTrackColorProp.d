module UnrealScript.Engine.InterpTrackColorProp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackColorProp : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackColorProp")()); }
	private static __gshared InterpTrackColorProp mDefaultProperties;
	@property final static InterpTrackColorProp DefaultProperties() { mixin(MGDPC!(InterpTrackColorProp, "InterpTrackColorProp Engine.Default__InterpTrackColorProp")()); }
	@property final auto ref ScriptName PropertyName() { mixin(MGPC!(ScriptName, 148)()); }
}
