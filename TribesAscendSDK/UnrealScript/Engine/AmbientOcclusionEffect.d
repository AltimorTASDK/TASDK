module UnrealScript.Engine.AmbientOcclusionEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Core.UObject;

extern(C++) interface AmbientOcclusionEffect : PostProcessEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AmbientOcclusionEffect")()); }
	private static __gshared AmbientOcclusionEffect mDefaultProperties;
	@property final static AmbientOcclusionEffect DefaultProperties() { mixin(MGDPC!(AmbientOcclusionEffect, "AmbientOcclusionEffect Engine.Default__AmbientOcclusionEffect")()); }
	enum EAmbientOcclusionQuality : ubyte
	{
		AO_High = 0,
		AO_Medium = 1,
		AO_Low = 2,
		AO_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			float HistoryWeightConvergenceTime() { mixin(MGPC!("float", 188)()); }
			float HistoryConvergenceTime() { mixin(MGPC!("float", 184)()); }
			int FilterSize() { mixin(MGPC!("int", 180)()); }
			float FilterDistanceScale() { mixin(MGPC!("float", 176)()); }
			float EdgeDistanceScale() { mixin(MGPC!("float", 172)()); }
			float EdgeDistanceThreshold() { mixin(MGPC!("float", 168)()); }
			float HaloOcclusion() { mixin(MGPC!("float", 164)()); }
			float HaloDistanceScale() { mixin(MGPC!("float", 160)()); }
			float HaloDistanceThreshold() { mixin(MGPC!("float", 156)()); }
			float OcclusionFadeoutMaxDistance() { mixin(MGPC!("float", 152)()); }
			float OcclusionFadeoutMinDistance() { mixin(MGPC!("float", 148)()); }
			AmbientOcclusionEffect.EAmbientOcclusionQuality OcclusionQuality() { mixin(MGPC!("AmbientOcclusionEffect.EAmbientOcclusionQuality", 144)()); }
			UObject.LinearColor OcclusionColor() { mixin(MGPC!("UObject.LinearColor", 100)()); }
			float OcclusionAttenuation() { mixin(MGPC!("float", 140)()); }
			float OcclusionRadius() { mixin(MGPC!("float", 136)()); }
			float MinOcclusion() { mixin(MGPC!("float", 128)()); }
			float OcclusionBias() { mixin(MGPC!("float", 124)()); }
			float OcclusionScale() { mixin(MGPC!("float", 120)()); }
			float OcclusionPower() { mixin(MGPC!("float", 116)()); }
		}
		bool bAngleBasedSSAO() { mixin(MGBPC!(132, 0x2)()); }
		bool bAngleBasedSSAO(bool val) { mixin(MSBPC!(132, 0x2)()); }
		bool SSAO2() { mixin(MGBPC!(132, 0x1)()); }
		bool SSAO2(bool val) { mixin(MSBPC!(132, 0x1)()); }
	}
}
