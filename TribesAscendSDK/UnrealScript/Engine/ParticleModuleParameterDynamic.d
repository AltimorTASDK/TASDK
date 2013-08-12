module UnrealScript.Engine.ParticleModuleParameterDynamic;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleParameterBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleParameterDynamic : ParticleModuleParameterBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleParameterDynamic")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleModuleParameterDynamic.EmitterDynamicParameter")); }
		@property final
		{
			auto ref
			{
				DistributionFloat.RawDistributionFloat ParamValue() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 20); }
				ParticleModuleParameterDynamic.EEmitterDynamicParameterValue ValueMethod() { return *cast(ParticleModuleParameterDynamic.EEmitterDynamicParameterValue*)(cast(size_t)&this + 12); }
				ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bScaleVelocityByParamValue() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bScaleVelocityByParamValue(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
			bool bSpawnTimeOnly() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x2) != 0; }
			bool bSpawnTimeOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x2; } return val; }
			bool bUseEmitterTime() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
			bool bUseEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		}
	}
	@property final auto ref ScriptArray!(ParticleModuleParameterDynamic.EmitterDynamicParameter) DynamicParams() { return *cast(ScriptArray!(ParticleModuleParameterDynamic.EmitterDynamicParameter)*)(cast(size_t)cast(void*)this + 72); }
}
