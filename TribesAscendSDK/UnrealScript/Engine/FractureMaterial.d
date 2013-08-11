module UnrealScript.Engine.FractureMaterial;

import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface FractureMaterial : UObject
{
	public @property final auto ref SoundCue FractureSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ParticleSystem FractureEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 60); }
}
