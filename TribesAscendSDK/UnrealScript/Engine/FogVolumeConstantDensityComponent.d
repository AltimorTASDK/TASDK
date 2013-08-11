module UnrealScript.Engine.FogVolumeConstantDensityComponent;

import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeConstantDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	@property final auto ref float Density() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
}
