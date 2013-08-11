module UnrealScript.Engine.FogVolumeConeDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeConeDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	@property final auto ref
	{
		float ConeMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
		Vector ConeAxis() { return *cast(Vector*)(cast(size_t)cast(void*)this + 168); }
		float ConeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		Vector ConeVertex() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
		float MaxDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	}
}
