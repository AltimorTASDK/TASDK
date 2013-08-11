module UnrealScript.Engine.FogVolumeConeDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeConeDensityComponent : FogVolumeDensityComponent
{
	public @property final auto ref float ConeMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref Vector ConeAxis() { return *cast(Vector*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float ConeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref Vector ConeVertex() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float MaxDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
}
