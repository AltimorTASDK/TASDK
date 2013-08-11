module UnrealScript.Engine.ActorFactoryAmbientSound;

import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryAmbientSound : ActorFactory
{
	public @property final auto ref SoundCue AmbientSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 92); }
}
