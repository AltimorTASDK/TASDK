module UnrealScript.Engine.ParticleModuleBeamTarget;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamTarget : ParticleModuleBeamBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleBeamTarget")); }
	@property final
	{
		auto ref
		{
			float LockRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			DistributionFloat.RawDistributionFloat TargetStrength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 144); }
			DistributionVector.RawDistributionVector TargetTangent() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 116); }
			DistributionVector.RawDistributionVector Target() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 84); }
			ScriptName TargetName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
			ParticleModuleBeamBase.Beam2SourceTargetTangentMethod TargetTangentMethod() { return *cast(ParticleModuleBeamBase.Beam2SourceTargetTangentMethod*)(cast(size_t)cast(void*)this + 73); }
			ParticleModuleBeamBase.Beam2SourceTargetMethod TargetMethod() { return *cast(ParticleModuleBeamBase.Beam2SourceTargetMethod*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bLockTargetStength() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x8) != 0; }
		bool bLockTargetStength(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x8; } return val; }
		bool bLockTargetTangent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x4) != 0; }
		bool bLockTargetTangent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x4; } return val; }
		bool bLockTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x2) != 0; }
		bool bLockTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x2; } return val; }
		bool bTargetAbsolute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
		bool bTargetAbsolute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	}
}
