module UnrealScript.Engine.FogVolumeSphericalDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeSphericalDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FogVolumeSphericalDensityComponent")); }
	private static __gshared FogVolumeSphericalDensityComponent mDefaultProperties;
	@property final static FogVolumeSphericalDensityComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FogVolumeSphericalDensityComponent)("FogVolumeSphericalDensityComponent Engine.Default__FogVolumeSphericalDensityComponent")); }
	@property final auto ref
	{
		float SphereRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		Vector SphereCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
		float MaxDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	}
}
