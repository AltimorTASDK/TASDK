module UnrealScript.Engine.ParticleModuleBeamModifier;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamModifier : ParticleModuleBeamBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleBeamModifier")); }
	private static __gshared ParticleModuleBeamModifier mDefaultProperties;
	@property final static ParticleModuleBeamModifier DefaultProperties() { mixin(MGDPC("ParticleModuleBeamModifier", "ParticleModuleBeamModifier Engine.Default__ParticleModuleBeamModifier")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleModuleBeamModifier.BeamModifierOptions")); }
		@property final
		{
			bool Block() { mixin(MGBPS(0, 0x4)); }
			bool Block(bool val) { mixin(MSBPS(0, 0x4)); }
			bool bScale() { mixin(MGBPS(0, 0x2)); }
			bool bScale(bool val) { mixin(MSBPS(0, 0x2)); }
			bool bModify() { mixin(MGBPS(0, 0x1)); }
			bool bModify(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat Strength() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 148)); }
			ParticleModuleBeamModifier.BeamModifierOptions StrengthOptions() { mixin(MGPC("ParticleModuleBeamModifier.BeamModifierOptions", 144)); }
			DistributionVector.RawDistributionVector Tangent() { mixin(MGPC("DistributionVector.RawDistributionVector", 112)); }
			ParticleModuleBeamModifier.BeamModifierOptions TangentOptions() { mixin(MGPC("ParticleModuleBeamModifier.BeamModifierOptions", 108)); }
			DistributionVector.RawDistributionVector Position() { mixin(MGPC("DistributionVector.RawDistributionVector", 80)); }
			ParticleModuleBeamModifier.BeamModifierOptions PositionOptions() { mixin(MGPC("ParticleModuleBeamModifier.BeamModifierOptions", 76)); }
			ParticleModuleBeamModifier.BeamModifierType ModifierType() { mixin(MGPC("ParticleModuleBeamModifier.BeamModifierType", 72)); }
		}
		bool bAbsoluteTangent() { mixin(MGBPC(140, 0x1)); }
		bool bAbsoluteTangent(bool val) { mixin(MSBPC(140, 0x1)); }
	}
}
