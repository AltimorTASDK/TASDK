module UnrealScript.Engine.ParticleModuleBeamNoise;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamNoise : ParticleModuleBeamBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleBeamNoise")); }
	private static __gshared ParticleModuleBeamNoise mDefaultProperties;
	@property final static ParticleModuleBeamNoise DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleBeamNoise)("ParticleModuleBeamNoise Engine.Default__ParticleModuleBeamNoise")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat NoiseScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 216); }
			float FrequencyDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
			int NoiseTessellation() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
			DistributionFloat.RawDistributionFloat NoiseTangentStrength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 180); }
			float NoiseTension() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			float NoiseLockTime() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float NoiseLockRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			DistributionVector.RawDistributionVector NoiseSpeed() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 140); }
			DistributionFloat.RawDistributionFloat NoiseRangeScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 112); }
			DistributionVector.RawDistributionVector NoiseRange() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 84); }
			int Frequency_LowRange() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int Frequency() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bApplyNoiseScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x80) != 0; }
		bool bApplyNoiseScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x80; } return val; }
		bool bTargetNoise() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x40) != 0; }
		bool bTargetNoise(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x40; } return val; }
		bool bUseNoiseTangents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x20) != 0; }
		bool bUseNoiseTangents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x20; } return val; }
		bool bOscillate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x10) != 0; }
		bool bOscillate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x10; } return val; }
		bool bNoiseLock() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8) != 0; }
		bool bNoiseLock(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8; } return val; }
		bool bSmooth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
		bool bSmooth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
		bool bNRScaleEmitterTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
		bool bNRScaleEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
		bool bLowFreq_Enabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bLowFreq_Enabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
}
