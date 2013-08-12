module UnrealScript.Engine.FogVolumeConeDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeConeDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FogVolumeConeDensityComponent")); }
	private static __gshared FogVolumeConeDensityComponent mDefaultProperties;
	@property final static FogVolumeConeDensityComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FogVolumeConeDensityComponent)("FogVolumeConeDensityComponent Engine.Default__FogVolumeConeDensityComponent")); }
	@property final auto ref
	{
		float ConeMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
		Vector ConeAxis() { return *cast(Vector*)(cast(size_t)cast(void*)this + 168); }
		float ConeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		Vector ConeVertex() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
		float MaxDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	}
}
