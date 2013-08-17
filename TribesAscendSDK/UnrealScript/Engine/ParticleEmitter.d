module UnrealScript.Engine.ParticleEmitter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleLODLevel;

extern(C++) interface ParticleEmitter : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleEmitter")()); }
	private static __gshared ParticleEmitter mDefaultProperties;
	@property final static ParticleEmitter DefaultProperties() { mixin(MGDPC!(ParticleEmitter, "ParticleEmitter Engine.Default__ParticleEmitter")()); }
	enum EEmitterRenderMode : ubyte
	{
		ERM_Normal = 0,
		ERM_Point = 1,
		ERM_Cross = 2,
		ERM_None = 3,
		ERM_MAX = 4,
	}
	enum EParticleSubUVInterpMethod : ubyte
	{
		PSUVIM_None = 0,
		PSUVIM_Linear = 1,
		PSUVIM_Linear_Blend = 2,
		PSUVIM_Random = 3,
		PSUVIM_Random_Blend = 4,
		PSUVIM_MAX = 5,
	}
	enum EParticleBurstMethod : ubyte
	{
		EPBM_Instant = 0,
		EPBM_Interpolated = 1,
		EPBM_MAX = 2,
	}
	struct ParticleBurst
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ParticleEmitter.ParticleBurst")()); }
		@property final auto ref
		{
			float Time() { mixin(MGPS!("float", 8)()); }
			int CountLow() { mixin(MGPS!("int", 4)()); }
			int Count() { mixin(MGPS!("int", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ParticleLODLevel) LODLevels() { mixin(MGPC!("ScriptArray!(ParticleLODLevel)", 80)()); }
			int InitialAllocationCount() { mixin(MGPC!("int", 100)()); }
			int PeakActiveParticles() { mixin(MGPC!("int", 96)()); }
			UObject.Color EmitterEditorColor() { mixin(MGPC!("UObject.Color", 76)()); }
			ParticleEmitter.EEmitterRenderMode EmitterRenderMode() { mixin(MGPC!("ParticleEmitter.EEmitterRenderMode", 72)()); }
			int SubUVDataOffset() { mixin(MGPC!("int", 68)()); }
			ScriptName EmitterName() { mixin(MGPC!("ScriptName", 60)()); }
		}
		bool bCookedOut() { mixin(MGBPC!(92, 0x8)()); }
		bool bCookedOut(bool val) { mixin(MSBPC!(92, 0x8)()); }
		bool bIsSoloing() { mixin(MGBPC!(92, 0x4)()); }
		bool bIsSoloing(bool val) { mixin(MSBPC!(92, 0x4)()); }
		bool bCollapsed() { mixin(MGBPC!(92, 0x2)()); }
		bool bCollapsed(bool val) { mixin(MSBPC!(92, 0x2)()); }
		bool ConvertedModules() { mixin(MGBPC!(92, 0x1)()); }
		bool ConvertedModules(bool val) { mixin(MSBPC!(92, 0x1)()); }
	}
}
