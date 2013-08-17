module UnrealScript.Engine.ParticleModule;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ParticleModule : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModule")()); }
	private static __gshared ParticleModule mDefaultProperties;
	@property final static ParticleModule DefaultProperties() { mixin(MGDPC!(ParticleModule, "ParticleModule Engine.Default__ParticleModule")()); }
	enum EModuleType : ubyte
	{
		EPMT_General = 0,
		EPMT_TypeData = 1,
		EPMT_Beam = 2,
		EPMT_Trail = 3,
		EPMT_Spawn = 4,
		EPMT_Required = 5,
		EPMT_Event = 6,
		EPMT_MAX = 7,
	}
	enum EParticleSourceSelectionMethod : ubyte
	{
		EPSSM_Random = 0,
		EPSSM_Sequential = 1,
		EPSSM_MAX = 2,
	}
	struct ParticleCurvePair
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ParticleModule.ParticleCurvePair")()); }
		@property final auto ref
		{
			UObject CurveObject() { mixin(MGPS!(UObject, 12)()); }
			ScriptString CurveName() { mixin(MGPS!(ScriptString, 0)()); }
		}
	}
	struct ParticleRandomSeedInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ParticleModule.ParticleRandomSeedInfo")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(int) RandomSeeds() { mixin(MGPS!(ScriptArray!(int), 12)()); }
				ScriptName ParameterName() { mixin(MGPS!(ScriptName, 0)()); }
			}
			bool bResetSeedOnEmitterLooping() { mixin(MGBPS!(8, 0x4)()); }
			bool bResetSeedOnEmitterLooping(bool val) { mixin(MSBPS!(8, 0x4)()); }
			bool bInstanceSeedIsIndex() { mixin(MGBPS!(8, 0x2)()); }
			bool bInstanceSeedIsIndex(bool val) { mixin(MSBPS!(8, 0x2)()); }
			bool bGetSeedFromInstance() { mixin(MGBPS!(8, 0x1)()); }
			bool bGetSeedFromInstance(bool val) { mixin(MSBPS!(8, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Color ModuleEditorColor() { mixin(MGPC!(UObject.Color, 68)()); }
			ubyte LODValidity() { mixin(MGPC!(ubyte, 64)()); }
		}
		bool bRequiresLoopingNotification() { mixin(MGBPC!(60, 0x400)()); }
		bool bRequiresLoopingNotification(bool val) { mixin(MSBPC!(60, 0x400)()); }
		bool bSupportsRandomSeed() { mixin(MGBPC!(60, 0x200)()); }
		bool bSupportsRandomSeed(bool val) { mixin(MSBPC!(60, 0x200)()); }
		bool LODDuplicate() { mixin(MGBPC!(60, 0x100)()); }
		bool LODDuplicate(bool val) { mixin(MSBPC!(60, 0x100)()); }
		bool bEditable() { mixin(MGBPC!(60, 0x80)()); }
		bool bEditable(bool val) { mixin(MSBPC!(60, 0x80)()); }
		bool bEnabled() { mixin(MGBPC!(60, 0x40)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(60, 0x40)()); }
		bool bSupported3DDrawMode() { mixin(MGBPC!(60, 0x20)()); }
		bool bSupported3DDrawMode(bool val) { mixin(MSBPC!(60, 0x20)()); }
		bool b3DDrawMode() { mixin(MGBPC!(60, 0x10)()); }
		bool b3DDrawMode(bool val) { mixin(MSBPC!(60, 0x10)()); }
		bool bCurvesAsColor() { mixin(MGBPC!(60, 0x8)()); }
		bool bCurvesAsColor(bool val) { mixin(MSBPC!(60, 0x8)()); }
		bool bFinalUpdateModule() { mixin(MGBPC!(60, 0x4)()); }
		bool bFinalUpdateModule(bool val) { mixin(MSBPC!(60, 0x4)()); }
		bool bUpdateModule() { mixin(MGBPC!(60, 0x2)()); }
		bool bUpdateModule(bool val) { mixin(MSBPC!(60, 0x2)()); }
		bool bSpawnModule() { mixin(MGBPC!(60, 0x1)()); }
		bool bSpawnModule(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
}
