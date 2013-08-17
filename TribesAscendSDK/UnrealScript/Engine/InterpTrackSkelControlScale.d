module UnrealScript.Engine.InterpTrackSkelControlScale;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackSkelControlScale : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackSkelControlScale")()); }
	private static __gshared InterpTrackSkelControlScale mDefaultProperties;
	@property final static InterpTrackSkelControlScale DefaultProperties() { mixin(MGDPC!(InterpTrackSkelControlScale, "InterpTrackSkelControlScale Engine.Default__InterpTrackSkelControlScale")()); }
	@property final auto ref ScriptName SkelControlName() { mixin(MGPC!("ScriptName", 148)()); }
}
