module UnrealScript.Engine.SphericalHarmonicLightComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.LightComponent;

extern(C++) interface SphericalHarmonicLightComponent : LightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SphericalHarmonicLightComponent")()); }
	private static __gshared SphericalHarmonicLightComponent mDefaultProperties;
	@property final static SphericalHarmonicLightComponent DefaultProperties() { mixin(MGDPC!(SphericalHarmonicLightComponent, "SphericalHarmonicLightComponent Engine.Default__SphericalHarmonicLightComponent")()); }
	@property final
	{
		@property final auto ref UObject.SHVectorRGB WorldSpaceIncidentLighting() { mixin(MGPC!(UObject.SHVectorRGB, 432)()); }
		bool bRenderBeforeModShadows() { mixin(MGBPC!(576, 0x1)()); }
		bool bRenderBeforeModShadows(bool val) { mixin(MSBPC!(576, 0x1)()); }
	}
}
