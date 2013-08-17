module UnrealScript.Engine.ParticleModuleBeamNoise;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamNoise : ParticleModuleBeamBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleBeamNoise")()); }
	private static __gshared ParticleModuleBeamNoise mDefaultProperties;
	@property final static ParticleModuleBeamNoise DefaultProperties() { mixin(MGDPC!(ParticleModuleBeamNoise, "ParticleModuleBeamNoise Engine.Default__ParticleModuleBeamNoise")()); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat NoiseScale() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 216)()); }
			float FrequencyDistance() { mixin(MGPC!("float", 212)()); }
			int NoiseTessellation() { mixin(MGPC!("int", 208)()); }
			DistributionFloat.RawDistributionFloat NoiseTangentStrength() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 180)()); }
			float NoiseTension() { mixin(MGPC!("float", 176)()); }
			float NoiseLockTime() { mixin(MGPC!("float", 172)()); }
			float NoiseLockRadius() { mixin(MGPC!("float", 168)()); }
			DistributionVector.RawDistributionVector NoiseSpeed() { mixin(MGPC!("DistributionVector.RawDistributionVector", 140)()); }
			DistributionFloat.RawDistributionFloat NoiseRangeScale() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 112)()); }
			DistributionVector.RawDistributionVector NoiseRange() { mixin(MGPC!("DistributionVector.RawDistributionVector", 84)()); }
			int Frequency_LowRange() { mixin(MGPC!("int", 80)()); }
			int Frequency() { mixin(MGPC!("int", 76)()); }
		}
		bool bApplyNoiseScale() { mixin(MGBPC!(72, 0x80)()); }
		bool bApplyNoiseScale(bool val) { mixin(MSBPC!(72, 0x80)()); }
		bool bTargetNoise() { mixin(MGBPC!(72, 0x40)()); }
		bool bTargetNoise(bool val) { mixin(MSBPC!(72, 0x40)()); }
		bool bUseNoiseTangents() { mixin(MGBPC!(72, 0x20)()); }
		bool bUseNoiseTangents(bool val) { mixin(MSBPC!(72, 0x20)()); }
		bool bOscillate() { mixin(MGBPC!(72, 0x10)()); }
		bool bOscillate(bool val) { mixin(MSBPC!(72, 0x10)()); }
		bool bNoiseLock() { mixin(MGBPC!(72, 0x8)()); }
		bool bNoiseLock(bool val) { mixin(MSBPC!(72, 0x8)()); }
		bool bSmooth() { mixin(MGBPC!(72, 0x4)()); }
		bool bSmooth(bool val) { mixin(MSBPC!(72, 0x4)()); }
		bool bNRScaleEmitterTime() { mixin(MGBPC!(72, 0x2)()); }
		bool bNRScaleEmitterTime(bool val) { mixin(MSBPC!(72, 0x2)()); }
		bool bLowFreq_Enabled() { mixin(MGBPC!(72, 0x1)()); }
		bool bLowFreq_Enabled(bool val) { mixin(MSBPC!(72, 0x1)()); }
	}
}
