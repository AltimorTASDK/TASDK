module UnrealScript.Engine.FogVolumeLinearHalfspaceDensityComponent;

import UnrealScript.Engine.FogVolumeDensityComponent;
import UnrealScript.Core.UObject;

extern(C++) interface FogVolumeLinearHalfspaceDensityComponent : FogVolumeDensityComponent
{
	public @property final auto ref UObject.Plane HalfspacePlane() { return *cast(UObject.Plane*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float PlaneDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
}
