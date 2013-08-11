module UnrealScript.Engine.ParticleModuleBeamNoise;

import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamNoise : ParticleModuleBeamBase
{
	public @property final auto ref DistributionFloat.RawDistributionFloat NoiseScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref float FrequencyDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref int NoiseTessellation() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref DistributionFloat.RawDistributionFloat NoiseTangentStrength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float NoiseTension() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref float NoiseLockTime() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float NoiseLockRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref DistributionVector.RawDistributionVector NoiseSpeed() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref DistributionFloat.RawDistributionFloat NoiseRangeScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref DistributionVector.RawDistributionVector NoiseRange() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref int Frequency_LowRange() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int Frequency() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bApplyNoiseScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x80) != 0; }
	public @property final bool bApplyNoiseScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x80; } return val; }
	public @property final bool bTargetNoise() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x40) != 0; }
	public @property final bool bTargetNoise(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x40; } return val; }
	public @property final bool bUseNoiseTangents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x20) != 0; }
	public @property final bool bUseNoiseTangents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x20; } return val; }
	public @property final bool bOscillate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x10) != 0; }
	public @property final bool bOscillate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x10; } return val; }
	public @property final bool bNoiseLock() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8) != 0; }
	public @property final bool bNoiseLock(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8; } return val; }
	public @property final bool bSmooth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
	public @property final bool bSmooth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
	public @property final bool bNRScaleEmitterTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
	public @property final bool bNRScaleEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
	public @property final bool bLowFreq_Enabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bLowFreq_Enabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
}
