module UnrealScript.Engine.ActorFactoryFogVolumeLinearHalfspaceDensityInfo;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryFogVolumeConstantDensityInfo;

extern(C++) interface ActorFactoryFogVolumeLinearHalfspaceDensityInfo : ActorFactoryFogVolumeConstantDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryFogVolumeLinearHalfspaceDensityInfo")); }
}
