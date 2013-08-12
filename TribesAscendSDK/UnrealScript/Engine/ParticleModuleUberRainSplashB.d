module UnrealScript.Engine.ParticleModuleUberRainSplashB;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberRainSplashB : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleUberRainSplashB")); }
	private static __gshared ParticleModuleUberRainSplashB mDefaultProperties;
	@property final static ParticleModuleUberRainSplashB DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleUberRainSplashB)("ParticleModuleUberRainSplashB Engine.Default__ParticleModuleUberRainSplashB")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat StartRotationRate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 228); }
			DistributionVector.RawDistributionVector LifeMultiplier() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 196); }
			DistributionFloat.RawDistributionFloat AlphaOverLife() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 168); }
			DistributionVector.RawDistributionVector ColorOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 140); }
			DistributionVector.RawDistributionVector StartSize() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
			DistributionFloat.RawDistributionFloat Lifetime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
		}
		bool MultiplyZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 224) & 0x4) != 0; }
		bool MultiplyZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 224) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 224) &= ~0x4; } return val; }
		bool MultiplyY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 224) & 0x2) != 0; }
		bool MultiplyY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 224) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 224) &= ~0x2; } return val; }
		bool MultiplyX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 224) & 0x1) != 0; }
		bool MultiplyX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 224) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 224) &= ~0x1; } return val; }
	}
}
