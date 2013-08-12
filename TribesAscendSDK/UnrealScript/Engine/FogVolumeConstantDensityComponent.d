module UnrealScript.Engine.FogVolumeConstantDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeConstantDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FogVolumeConstantDensityComponent")); }
	private static __gshared FogVolumeConstantDensityComponent mDefaultProperties;
	@property final static FogVolumeConstantDensityComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FogVolumeConstantDensityComponent)("FogVolumeConstantDensityComponent Engine.Default__FogVolumeConstantDensityComponent")); }
	@property final auto ref float Density() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
}
