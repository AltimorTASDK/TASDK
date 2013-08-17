module UnrealScript.Engine.InterpTrackAudioMaster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackAudioMaster : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackAudioMaster")()); }
	private static __gshared InterpTrackAudioMaster mDefaultProperties;
	@property final static InterpTrackAudioMaster DefaultProperties() { mixin(MGDPC!(InterpTrackAudioMaster, "InterpTrackAudioMaster Engine.Default__InterpTrackAudioMaster")()); }
}
