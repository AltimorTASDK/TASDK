module UnrealScript.Engine.AmbientSoundSimple;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AmbientSound;
import UnrealScript.Engine.SoundNodeAmbient;

extern(C++) interface AmbientSoundSimple : AmbientSound
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AmbientSoundSimple")); }
	private static __gshared AmbientSoundSimple mDefaultProperties;
	@property final static AmbientSoundSimple DefaultProperties() { mixin(MGDPC("AmbientSoundSimple", "AmbientSoundSimple Engine.Default__AmbientSoundSimple")); }
	@property final auto ref
	{
		SoundNodeAmbient SoundNodeInstance() { mixin(MGPC("SoundNodeAmbient", 496)); }
		SoundCue SoundCueInstance() { mixin(MGPC("SoundCue", 492)); }
		SoundNodeAmbient AmbientProperties() { mixin(MGPC("SoundNodeAmbient", 488)); }
	}
}
