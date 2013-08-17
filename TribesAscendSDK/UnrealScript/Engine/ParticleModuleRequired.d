module UnrealScript.Engine.ParticleModuleRequired;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleEmitter;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.ParticleSpriteEmitter;

extern(C++) interface ParticleModuleRequired : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleRequired")()); }
	private static __gshared ParticleModuleRequired mDefaultProperties;
	@property final static ParticleModuleRequired DefaultProperties() { mixin(MGDPC!(ParticleModuleRequired, "ParticleModuleRequired Engine.Default__ParticleModuleRequired")()); }
	enum EEmitterNormalsMode : ubyte
	{
		ENM_CameraFacing = 0,
		ENM_Spherical = 1,
		ENM_Cylindrical = 2,
		ENM_MAX = 3,
	}
	enum EParticleSortMode : ubyte
	{
		PSORTMODE_None = 0,
		PSORTMODE_ViewProjDepth = 1,
		PSORTMODE_DistanceToView = 2,
		PSORTMODE_Age_OldestFirst = 3,
		PSORTMODE_Age_NewestFirst = 4,
		PSORTMODE_MAX = 5,
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ParticleEmitter.ParticleBurst) BurstList() { mixin(MGPC!("ScriptArray!(ParticleEmitter.ParticleBurst)", 128)()); }
			Vector NormalsCylinderDirection() { mixin(MGPC!("Vector", 184)()); }
			Vector NormalsSphereCenter() { mixin(MGPC!("Vector", 172)()); }
			float DownsampleThresholdScreenFraction() { mixin(MGPC!("float", 168)()); }
			int MaxDrawCount() { mixin(MGPC!("int", 164)()); }
			int RandomImageChanges() { mixin(MGPC!("int", 160)()); }
			float RandomImageTime() { mixin(MGPC!("float", 156)()); }
			int SubImages_Vertical() { mixin(MGPC!("int", 152)()); }
			int SubImages_Horizontal() { mixin(MGPC!("int", 148)()); }
			float EmitterDelayLow() { mixin(MGPC!("float", 144)()); }
			float EmitterDelay() { mixin(MGPC!("float", 140)()); }
			DistributionFloat.RawDistributionFloat SpawnRate() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 100)()); }
			int EmitterLoops() { mixin(MGPC!("int", 96)()); }
			float EmitterDurationLow() { mixin(MGPC!("float", 92)()); }
			float EmitterDuration() { mixin(MGPC!("float", 88)()); }
			ParticleModuleRequired.EEmitterNormalsMode EmitterNormalsMode() { mixin(MGPC!("ParticleModuleRequired.EEmitterNormalsMode", 80)()); }
			ParticleEmitter.EParticleSubUVInterpMethod InterpolationMethod() { mixin(MGPC!("ParticleEmitter.EParticleSubUVInterpMethod", 79)()); }
			ParticleEmitter.EParticleBurstMethod ParticleBurstMethod() { mixin(MGPC!("ParticleEmitter.EParticleBurstMethod", 78)()); }
			ParticleModuleRequired.EParticleSortMode SortMode() { mixin(MGPC!("ParticleModuleRequired.EParticleSortMode", 77)()); }
			// WARNING: Property 'Material' has the same name as a defined type!
			ParticleSpriteEmitter.EParticleScreenAlignment ScreenAlignment() { mixin(MGPC!("ParticleSpriteEmitter.EParticleScreenAlignment", 76)()); }
		}
		bool bUseMaxDrawCount() { mixin(MGBPC!(84, 0x800)()); }
		bool bUseMaxDrawCount(bool val) { mixin(MSBPC!(84, 0x800)()); }
		bool bDirectUV() { mixin(MGBPC!(84, 0x400)()); }
		bool bDirectUV(bool val) { mixin(MSBPC!(84, 0x400)()); }
		bool bScaleUV() { mixin(MGBPC!(84, 0x200)()); }
		bool bScaleUV(bool val) { mixin(MSBPC!(84, 0x200)()); }
		bool bDelayFirstLoopOnly() { mixin(MGBPC!(84, 0x100)()); }
		bool bDelayFirstLoopOnly(bool val) { mixin(MSBPC!(84, 0x100)()); }
		bool bEmitterDelayUseRange() { mixin(MGBPC!(84, 0x80)()); }
		bool bEmitterDelayUseRange(bool val) { mixin(MSBPC!(84, 0x80)()); }
		bool bDurationRecalcEachLoop() { mixin(MGBPC!(84, 0x40)()); }
		bool bDurationRecalcEachLoop(bool val) { mixin(MSBPC!(84, 0x40)()); }
		bool bEmitterDurationUseRange() { mixin(MGBPC!(84, 0x20)()); }
		bool bEmitterDurationUseRange(bool val) { mixin(MSBPC!(84, 0x20)()); }
		bool bUseLegacyEmitterTime() { mixin(MGBPC!(84, 0x10)()); }
		bool bUseLegacyEmitterTime(bool val) { mixin(MSBPC!(84, 0x10)()); }
		bool bRequiresSorting() { mixin(MGBPC!(84, 0x8)()); }
		bool bRequiresSorting(bool val) { mixin(MSBPC!(84, 0x8)()); }
		bool bKillOnCompleted() { mixin(MGBPC!(84, 0x4)()); }
		bool bKillOnCompleted(bool val) { mixin(MSBPC!(84, 0x4)()); }
		bool bKillOnDeactivate() { mixin(MGBPC!(84, 0x2)()); }
		bool bKillOnDeactivate(bool val) { mixin(MSBPC!(84, 0x2)()); }
		bool bUseLocalSpace() { mixin(MGBPC!(84, 0x1)()); }
		bool bUseLocalSpace(bool val) { mixin(MSBPC!(84, 0x1)()); }
	}
}
