module UnrealScript.Engine.ActorFactoryFogVolumeSphericalDensityInfo;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryFogVolumeConstantDensityInfo;

extern(C++) interface ActorFactoryFogVolumeSphericalDensityInfo : ActorFactoryFogVolumeConstantDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryFogVolumeSphericalDensityInfo")); }
	private static __gshared ActorFactoryFogVolumeSphericalDensityInfo mDefaultProperties;
	@property final static ActorFactoryFogVolumeSphericalDensityInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryFogVolumeSphericalDensityInfo)("ActorFactoryFogVolumeSphericalDensityInfo Engine.Default__ActorFactoryFogVolumeSphericalDensityInfo")); }
}
