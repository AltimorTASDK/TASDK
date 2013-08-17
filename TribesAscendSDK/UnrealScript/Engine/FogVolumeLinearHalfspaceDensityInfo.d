module UnrealScript.Engine.FogVolumeLinearHalfspaceDensityInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FogVolumeDensityInfo;

extern(C++) interface FogVolumeLinearHalfspaceDensityInfo : FogVolumeDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FogVolumeLinearHalfspaceDensityInfo")()); }
	private static __gshared FogVolumeLinearHalfspaceDensityInfo mDefaultProperties;
	@property final static FogVolumeLinearHalfspaceDensityInfo DefaultProperties() { mixin(MGDPC!(FogVolumeLinearHalfspaceDensityInfo, "FogVolumeLinearHalfspaceDensityInfo Engine.Default__FogVolumeLinearHalfspaceDensityInfo")()); }
}
