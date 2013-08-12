module UnrealScript.Engine.ParticleModuleBeamModifier;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamModifier : ParticleModuleBeamBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleBeamModifier")); }
	enum BeamModifierType : ubyte
	{
		PEB2MT_Source = 0,
		PEB2MT_Target = 1,
		PEB2MT_MAX = 2,
	}
	struct BeamModifierOptions
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleModuleBeamModifier.BeamModifierOptions")); }
		@property final
		{
			bool Block() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool Block(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bScale() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bModify() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bModify(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat Strength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 148); }
			ParticleModuleBeamModifier.BeamModifierOptions StrengthOptions() { return *cast(ParticleModuleBeamModifier.BeamModifierOptions*)(cast(size_t)cast(void*)this + 144); }
			DistributionVector.RawDistributionVector Tangent() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
			ParticleModuleBeamModifier.BeamModifierOptions TangentOptions() { return *cast(ParticleModuleBeamModifier.BeamModifierOptions*)(cast(size_t)cast(void*)this + 108); }
			DistributionVector.RawDistributionVector Position() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 80); }
			ParticleModuleBeamModifier.BeamModifierOptions PositionOptions() { return *cast(ParticleModuleBeamModifier.BeamModifierOptions*)(cast(size_t)cast(void*)this + 76); }
			ParticleModuleBeamModifier.BeamModifierType ModifierType() { return *cast(ParticleModuleBeamModifier.BeamModifierType*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bAbsoluteTangent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bAbsoluteTangent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
}
