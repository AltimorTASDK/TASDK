module UnrealScript.Engine.ParticleModuleBeamModifier;

import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamModifier : ParticleModuleBeamBase
{
	enum BeamModifierType : ubyte
	{
		PEB2MT_Source = 0,
		PEB2MT_Target = 1,
		PEB2MT_MAX = 2,
	}
	struct BeamModifierOptions
	{
		public @property final bool Block() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool Block(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __Block[4];
		public @property final bool bScale() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bScale[4];
		public @property final bool bModify() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bModify(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bModify[4];
	}
	public @property final auto ref DistributionFloat.RawDistributionFloat Strength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ParticleModuleBeamModifier.BeamModifierOptions StrengthOptions() { return *cast(ParticleModuleBeamModifier.BeamModifierOptions*)(cast(size_t)cast(void*)this + 144); }
	public @property final bool bAbsoluteTangent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bAbsoluteTangent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	public @property final auto ref DistributionVector.RawDistributionVector Tangent() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ParticleModuleBeamModifier.BeamModifierOptions TangentOptions() { return *cast(ParticleModuleBeamModifier.BeamModifierOptions*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref DistributionVector.RawDistributionVector Position() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ParticleModuleBeamModifier.BeamModifierOptions PositionOptions() { return *cast(ParticleModuleBeamModifier.BeamModifierOptions*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ParticleModuleBeamModifier.BeamModifierType ModifierType() { return *cast(ParticleModuleBeamModifier.BeamModifierType*)(cast(size_t)cast(void*)this + 72); }
}
