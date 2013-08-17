module UnrealScript.Engine.LightmassLevelSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface LightmassLevelSettings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LightmassLevelSettings")()); }
	private static __gshared LightmassLevelSettings mDefaultProperties;
	@property final static LightmassLevelSettings DefaultProperties() { mixin(MGDPC!(LightmassLevelSettings, "LightmassLevelSettings Engine.Default__LightmassLevelSettings")()); }
	@property final
	{
		auto ref
		{
			float MaxOcclusionDistance() { mixin(MGPC!("float", 104)()); }
			float FullyOccludedSamplesFraction() { mixin(MGPC!("float", 100)()); }
			float OcclusionExponent() { mixin(MGPC!("float", 96)()); }
			float IndirectIlluminationOcclusionFraction() { mixin(MGPC!("float", 92)()); }
			float DirectIlluminationOcclusionFraction() { mixin(MGPC!("float", 88)()); }
			float SpecularBoost() { mixin(MGPC!("float", 80)()); }
			float DiffuseBoost() { mixin(MGPC!("float", 76)()); }
			float EmissiveBoost() { mixin(MGPC!("float", 72)()); }
			float EnvironmentIntensity() { mixin(MGPC!("float", 68)()); }
			UObject.Color EnvironmentColor() { mixin(MGPC!("UObject.Color", 64)()); }
			int NumIndirectLightingBounces() { mixin(MGPC!("int", 60)()); }
		}
		bool bVisualizeAmbientOcclusion() { mixin(MGBPC!(84, 0x2)()); }
		bool bVisualizeAmbientOcclusion(bool val) { mixin(MSBPC!(84, 0x2)()); }
		bool bUseAmbientOcclusion() { mixin(MGBPC!(84, 0x1)()); }
		bool bUseAmbientOcclusion(bool val) { mixin(MSBPC!(84, 0x1)()); }
	}
}
