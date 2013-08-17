module UnrealScript.Engine.ActorFactoryFogVolumeLinearHalfspaceDensityInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryFogVolumeConstantDensityInfo;

extern(C++) interface ActorFactoryFogVolumeLinearHalfspaceDensityInfo : ActorFactoryFogVolumeConstantDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryFogVolumeLinearHalfspaceDensityInfo")()); }
	private static __gshared ActorFactoryFogVolumeLinearHalfspaceDensityInfo mDefaultProperties;
	@property final static ActorFactoryFogVolumeLinearHalfspaceDensityInfo DefaultProperties() { mixin(MGDPC!(ActorFactoryFogVolumeLinearHalfspaceDensityInfo, "ActorFactoryFogVolumeLinearHalfspaceDensityInfo Engine.Default__ActorFactoryFogVolumeLinearHalfspaceDensityInfo")()); }
}
