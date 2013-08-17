module UnrealScript.Engine.ActorFactoryFogVolumeSphericalDensityInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryFogVolumeConstantDensityInfo;

extern(C++) interface ActorFactoryFogVolumeSphericalDensityInfo : ActorFactoryFogVolumeConstantDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryFogVolumeSphericalDensityInfo")); }
	private static __gshared ActorFactoryFogVolumeSphericalDensityInfo mDefaultProperties;
	@property final static ActorFactoryFogVolumeSphericalDensityInfo DefaultProperties() { mixin(MGDPC("ActorFactoryFogVolumeSphericalDensityInfo", "ActorFactoryFogVolumeSphericalDensityInfo Engine.Default__ActorFactoryFogVolumeSphericalDensityInfo")); }
}
