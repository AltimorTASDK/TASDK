module UnrealScript.UnrealEd.InterpTrackParticleReplayHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackParticleReplayHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackParticleReplayHelper")); }
	private static __gshared InterpTrackParticleReplayHelper mDefaultProperties;
	@property final static InterpTrackParticleReplayHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackParticleReplayHelper)("InterpTrackParticleReplayHelper UnrealEd.Default__InterpTrackParticleReplayHelper")); }
}
