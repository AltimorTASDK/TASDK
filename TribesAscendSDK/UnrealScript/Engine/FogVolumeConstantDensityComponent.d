module UnrealScript.Engine.FogVolumeConstantDensityComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeConstantDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FogVolumeConstantDensityComponent")); }
	private static __gshared FogVolumeConstantDensityComponent mDefaultProperties;
	@property final static FogVolumeConstantDensityComponent DefaultProperties() { mixin(MGDPC("FogVolumeConstantDensityComponent", "FogVolumeConstantDensityComponent Engine.Default__FogVolumeConstantDensityComponent")); }
	@property final auto ref float Density() { mixin(MGPC("float", 148)); }
}
