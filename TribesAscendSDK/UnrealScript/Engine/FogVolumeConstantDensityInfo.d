module UnrealScript.Engine.FogVolumeConstantDensityInfo;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityInfo;

extern(C++) interface FogVolumeConstantDensityInfo : FogVolumeDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FogVolumeConstantDensityInfo")); }
	private static __gshared FogVolumeConstantDensityInfo mDefaultProperties;
	@property final static FogVolumeConstantDensityInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FogVolumeConstantDensityInfo)("FogVolumeConstantDensityInfo Engine.Default__FogVolumeConstantDensityInfo")); }
}
