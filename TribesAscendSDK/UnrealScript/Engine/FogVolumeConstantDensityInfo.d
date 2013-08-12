module UnrealScript.Engine.FogVolumeConstantDensityInfo;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityInfo;

extern(C++) interface FogVolumeConstantDensityInfo : FogVolumeDensityInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FogVolumeConstantDensityInfo")); }
}
