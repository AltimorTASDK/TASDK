module UnrealScript.Engine.FogVolumeConeDensityInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FogVolumeDensityInfo;

extern(C++) interface FogVolumeConeDensityInfo : FogVolumeDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FogVolumeConeDensityInfo")()); }
	private static __gshared FogVolumeConeDensityInfo mDefaultProperties;
	@property final static FogVolumeConeDensityInfo DefaultProperties() { mixin(MGDPC!(FogVolumeConeDensityInfo, "FogVolumeConeDensityInfo Engine.Default__FogVolumeConeDensityInfo")()); }
}
