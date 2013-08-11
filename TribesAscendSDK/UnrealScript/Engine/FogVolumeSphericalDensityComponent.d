module UnrealScript.Engine.FogVolumeSphericalDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeSphericalDensityComponent : FogVolumeDensityComponent
{
	public @property final auto ref float SphereRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref Vector SphereCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float MaxDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
}
