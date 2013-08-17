module UnrealScript.Engine.FogVolumeLinearHalfspaceDensityComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FogVolumeDensityComponent;
import UnrealScript.Core.UObject;

extern(C++) interface FogVolumeLinearHalfspaceDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FogVolumeLinearHalfspaceDensityComponent")()); }
	private static __gshared FogVolumeLinearHalfspaceDensityComponent mDefaultProperties;
	@property final static FogVolumeLinearHalfspaceDensityComponent DefaultProperties() { mixin(MGDPC!(FogVolumeLinearHalfspaceDensityComponent, "FogVolumeLinearHalfspaceDensityComponent Engine.Default__FogVolumeLinearHalfspaceDensityComponent")()); }
	@property final auto ref
	{
		UObject.Plane HalfspacePlane() { mixin(MGPC!(UObject.Plane, 160)()); }
		float PlaneDistanceFactor() { mixin(MGPC!(float, 148)()); }
	}
}
