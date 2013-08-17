module UnrealScript.Engine.InterpTrackInstParticleReplay;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstParticleReplay : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstParticleReplay")()); }
	private static __gshared InterpTrackInstParticleReplay mDefaultProperties;
	@property final static InterpTrackInstParticleReplay DefaultProperties() { mixin(MGDPC!(InterpTrackInstParticleReplay, "InterpTrackInstParticleReplay Engine.Default__InterpTrackInstParticleReplay")()); }
	@property final auto ref float LastUpdatePosition() { mixin(MGPC!("float", 60)()); }
}
