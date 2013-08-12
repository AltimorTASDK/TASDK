module UnrealScript.Engine.FogVolumeLinearHalfspaceDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityComponent;
import UnrealScript.Core.UObject;

extern(C++) interface FogVolumeLinearHalfspaceDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FogVolumeLinearHalfspaceDensityComponent")); }
	private static __gshared FogVolumeLinearHalfspaceDensityComponent mDefaultProperties;
	@property final static FogVolumeLinearHalfspaceDensityComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FogVolumeLinearHalfspaceDensityComponent)("FogVolumeLinearHalfspaceDensityComponent Engine.Default__FogVolumeLinearHalfspaceDensityComponent")); }
	@property final auto ref
	{
		UObject.Plane HalfspacePlane() { return *cast(UObject.Plane*)(cast(size_t)cast(void*)this + 160); }
		float PlaneDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	}
}
