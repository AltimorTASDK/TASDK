module UnrealScript.Engine.ParticleModuleParameterDynamic;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleParameterBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleParameterDynamic : ParticleModuleParameterBase
{
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
		public @property final auto ref DistributionFloat.RawDistributionFloat ParamValue() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 20); }
		private ubyte __ParamValue[28];
		public @property final bool bScaleVelocityByParamValue() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bScaleVelocityByParamValue(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bScaleVelocityByParamValue[4];
		public @property final auto ref ParticleModuleParameterDynamic.EEmitterDynamicParameterValue ValueMethod() { return *cast(ParticleModuleParameterDynamic.EEmitterDynamicParameterValue*)(cast(size_t)&this + 12); }
		private ubyte __ValueMethod[1];
		public @property final bool bSpawnTimeOnly() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x2) != 0; }
		public @property final bool bSpawnTimeOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x2; } return val; }
		private ubyte __bSpawnTimeOnly[4];
		public @property final bool bUseEmitterTime() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool bUseEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __bUseEmitterTime[4];
		public @property final auto ref ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ParamName[8];
	}
	public @property final auto ref ScriptArray!(ParticleModuleParameterDynamic.EmitterDynamicParameter) DynamicParams() { return *cast(ScriptArray!(ParticleModuleParameterDynamic.EmitterDynamicParameter)*)(cast(size_t)cast(void*)this + 72); }
}
