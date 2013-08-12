module UnrealScript.Engine.ParticleModuleBeamSource;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamSource : ParticleModuleBeamBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleBeamSource")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat SourceStrength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 144); }
			DistributionVector.RawDistributionVector SourceTangent() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 116); }
			DistributionVector.RawDistributionVector Source() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 88); }
			ScriptName SourceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
			ParticleModuleBeamBase.Beam2SourceTargetTangentMethod SourceTangentMethod() { return *cast(ParticleModuleBeamBase.Beam2SourceTargetTangentMethod*)(cast(size_t)cast(void*)this + 73); }
			ParticleModuleBeamBase.Beam2SourceTargetMethod SourceMethod() { return *cast(ParticleModuleBeamBase.Beam2SourceTargetMethod*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bLockSourceStength() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x8) != 0; }
		bool bLockSourceStength(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x8; } return val; }
		bool bLockSourceTangent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x4) != 0; }
		bool bLockSourceTangent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x4; } return val; }
		bool bLockSource() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
		bool bLockSource(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
		bool bSourceAbsolute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bSourceAbsolute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
}
