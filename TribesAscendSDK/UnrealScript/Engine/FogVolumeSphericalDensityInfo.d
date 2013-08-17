module UnrealScript.Engine.FogVolumeSphericalDensityInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FogVolumeDensityInfo;

extern(C++) interface FogVolumeSphericalDensityInfo : FogVolumeDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FogVolumeSphericalDensityInfo")); }
	private static __gshared FogVolumeSphericalDensityInfo mDefaultProperties;
	@property final static FogVolumeSphericalDensityInfo DefaultProperties() { mixin(MGDPC("FogVolumeSphericalDensityInfo", "FogVolumeSphericalDensityInfo Engine.Default__FogVolumeSphericalDensityInfo")); }
}
