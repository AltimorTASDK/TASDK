module UnrealScript.Engine.ParticleModuleParameterDynamic;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleParameterBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleParameterDynamic : ParticleModuleParameterBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleParameterDynamic")); }
	private static __gshared ParticleModuleParameterDynamic mDefaultProperties;
	@property final static ParticleModuleParameterDynamic DefaultProperties() { mixin(MGDPC("ParticleModuleParameterDynamic", "ParticleModuleParameterDynamic Engine.Default__ParticleModuleParameterDynamic")); }
	enum EEmitterDynamicParameterValue : ubyte
	{
		EDPV_UserSet = 0,
		EDPV_VelocityX = 1,
		EDPV_VelocityY = 2,
		EDPV_VelocityZ = 3,
		EDPV_VelocityMag = 4,
		EDPV_MAX = 5,
	}
	struct EmitterDynamicParameter
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleModuleParameterDynamic.EmitterDynamicParameter")); }
		@property final
		{
			auto ref
			{
				DistributionFloat.RawDistributionFloat ParamValue() { mixin(MGPS("DistributionFloat.RawDistributionFloat", 20)); }
				ParticleModuleParameterDynamic.EEmitterDynamicParameterValue ValueMethod() { mixin(MGPS("ParticleModuleParameterDynamic.EEmitterDynamicParameterValue", 12)); }
				ScriptName ParamName() { mixin(MGPS("ScriptName", 0)); }
			}
			bool bScaleVelocityByParamValue() { mixin(MGBPS(16, 0x1)); }
			bool bScaleVelocityByParamValue(bool val) { mixin(MSBPS(16, 0x1)); }
			bool bSpawnTimeOnly() { mixin(MGBPS(8, 0x2)); }
			bool bSpawnTimeOnly(bool val) { mixin(MSBPS(8, 0x2)); }
			bool bUseEmitterTime() { mixin(MGBPS(8, 0x1)); }
			bool bUseEmitterTime(bool val) { mixin(MSBPS(8, 0x1)); }
		}
	}
	@property final auto ref ScriptArray!(ParticleModuleParameterDynamic.EmitterDynamicParameter) DynamicParams() { mixin(MGPC("ScriptArray!(ParticleModuleParameterDynamic.EmitterDynamicParameter)", 72)); }
}
