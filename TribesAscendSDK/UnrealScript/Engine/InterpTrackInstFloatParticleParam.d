module UnrealScript.Engine.InterpTrackInstFloatParticleParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstFloatParticleParam : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstFloatParticleParam")()); }
	private static __gshared InterpTrackInstFloatParticleParam mDefaultProperties;
	@property final static InterpTrackInstFloatParticleParam DefaultProperties() { mixin(MGDPC!(InterpTrackInstFloatParticleParam, "InterpTrackInstFloatParticleParam Engine.Default__InterpTrackInstFloatParticleParam")()); }
	@property final auto ref float ResetFloat() { mixin(MGPC!(float, 60)()); }
}
