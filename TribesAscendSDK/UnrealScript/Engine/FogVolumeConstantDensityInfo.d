module UnrealScript.Engine.FogVolumeConstantDensityInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FogVolumeDensityInfo;

extern(C++) interface FogVolumeConstantDensityInfo : FogVolumeDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FogVolumeConstantDensityInfo")); }
	private static __gshared FogVolumeConstantDensityInfo mDefaultProperties;
	@property final static FogVolumeConstantDensityInfo DefaultProperties() { mixin(MGDPC("FogVolumeConstantDensityInfo", "FogVolumeConstantDensityInfo Engine.Default__FogVolumeConstantDensityInfo")); }
}
