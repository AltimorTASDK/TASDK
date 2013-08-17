module UnrealScript.Engine.InterpTrackInstAudioMaster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstAudioMaster : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInstAudioMaster")); }
	private static __gshared InterpTrackInstAudioMaster mDefaultProperties;
	@property final static InterpTrackInstAudioMaster DefaultProperties() { mixin(MGDPC("InterpTrackInstAudioMaster", "InterpTrackInstAudioMaster Engine.Default__InterpTrackInstAudioMaster")); }
}
