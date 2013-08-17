module UnrealScript.UnrealEd.InterpTrackParticleReplayHelper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackParticleReplayHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.InterpTrackParticleReplayHelper")); }
	private static __gshared InterpTrackParticleReplayHelper mDefaultProperties;
	@property final static InterpTrackParticleReplayHelper DefaultProperties() { mixin(MGDPC("InterpTrackParticleReplayHelper", "InterpTrackParticleReplayHelper UnrealEd.Default__InterpTrackParticleReplayHelper")); }
}
