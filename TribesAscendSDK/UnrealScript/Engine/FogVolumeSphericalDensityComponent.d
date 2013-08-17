module UnrealScript.Engine.FogVolumeSphericalDensityComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeSphericalDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FogVolumeSphericalDensityComponent")); }
	private static __gshared FogVolumeSphericalDensityComponent mDefaultProperties;
	@property final static FogVolumeSphericalDensityComponent DefaultProperties() { mixin(MGDPC("FogVolumeSphericalDensityComponent", "FogVolumeSphericalDensityComponent Engine.Default__FogVolumeSphericalDensityComponent")); }
	@property final auto ref
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewSphereRadius'!
		float SphereRadius() { mixin(MGPC("float", 164)); }
		Vector SphereCenter() { mixin(MGPC("Vector", 152)); }
		float MaxDensity() { mixin(MGPC("float", 148)); }
	}
}
