module UnrealScript.Engine.FogVolumeLinearHalfspaceDensityInfo;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityInfo;

extern(C++) interface FogVolumeLinearHalfspaceDensityInfo : FogVolumeDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FogVolumeLinearHalfspaceDensityInfo")); }
	private static __gshared FogVolumeLinearHalfspaceDensityInfo mDefaultProperties;
	@property final static FogVolumeLinearHalfspaceDensityInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FogVolumeLinearHalfspaceDensityInfo)("FogVolumeLinearHalfspaceDensityInfo Engine.Default__FogVolumeLinearHalfspaceDensityInfo")); }
}
