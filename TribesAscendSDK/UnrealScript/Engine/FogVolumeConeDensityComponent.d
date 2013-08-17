module UnrealScript.Engine.FogVolumeConeDensityComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeConeDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FogVolumeConeDensityComponent")()); }
	private static __gshared FogVolumeConeDensityComponent mDefaultProperties;
	@property final static FogVolumeConeDensityComponent DefaultProperties() { mixin(MGDPC!(FogVolumeConeDensityComponent, "FogVolumeConeDensityComponent Engine.Default__FogVolumeConeDensityComponent")()); }
	@property final auto ref
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewCone'!
		float ConeMaxAngle() { mixin(MGPC!("float", 180)()); }
		Vector ConeAxis() { mixin(MGPC!("Vector", 168)()); }
		float ConeRadius() { mixin(MGPC!("float", 164)()); }
		Vector ConeVertex() { mixin(MGPC!("Vector", 152)()); }
		float MaxDensity() { mixin(MGPC!("float", 148)()); }
	}
}
