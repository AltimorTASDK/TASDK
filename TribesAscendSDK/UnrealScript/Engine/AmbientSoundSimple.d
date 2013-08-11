module UnrealScript.Engine.AmbientSoundSimple;

import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AmbientSound;
import UnrealScript.Engine.SoundNodeAmbient;

extern(C++) interface AmbientSoundSimple : AmbientSound
{
public extern(D):
	@property final auto ref
	{
		SoundNodeAmbient SoundNodeInstance() { return *cast(SoundNodeAmbient*)(cast(size_t)cast(void*)this + 496); }
		SoundCue SoundCueInstance() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 492); }
		SoundNodeAmbient AmbientProperties() { return *cast(SoundNodeAmbient*)(cast(size_t)cast(void*)this + 488); }
	}
}
