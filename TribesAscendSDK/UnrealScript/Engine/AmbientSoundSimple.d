module UnrealScript.Engine.AmbientSoundSimple;

import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AmbientSound;
import UnrealScript.Engine.SoundNodeAmbient;

extern(C++) interface AmbientSoundSimple : AmbientSound
{
	public @property final auto ref SoundNodeAmbient SoundNodeInstance() { return *cast(SoundNodeAmbient*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref SoundCue SoundCueInstance() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref SoundNodeAmbient AmbientProperties() { return *cast(SoundNodeAmbient*)(cast(size_t)cast(void*)this + 488); }
}
