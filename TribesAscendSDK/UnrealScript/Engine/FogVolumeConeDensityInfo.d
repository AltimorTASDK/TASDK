module UnrealScript.Engine.FogVolumeConeDensityInfo;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityInfo;

extern(C++) interface FogVolumeConeDensityInfo : FogVolumeDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FogVolumeConeDensityInfo")); }
	private static __gshared FogVolumeConeDensityInfo mDefaultProperties;
	@property final static FogVolumeConeDensityInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FogVolumeConeDensityInfo)("FogVolumeConeDensityInfo Engine.Default__FogVolumeConeDensityInfo")); }
}
