module UnrealScript.Engine.InterpTrackFloatParticleParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackFloatParticleParam : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackFloatParticleParam")()); }
	private static __gshared InterpTrackFloatParticleParam mDefaultProperties;
	@property final static InterpTrackFloatParticleParam DefaultProperties() { mixin(MGDPC!(InterpTrackFloatParticleParam, "InterpTrackFloatParticleParam Engine.Default__InterpTrackFloatParticleParam")()); }
	@property final auto ref ScriptName ParamName() { mixin(MGPC!(ScriptName, 148)()); }
}
