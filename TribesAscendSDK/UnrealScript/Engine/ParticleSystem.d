module UnrealScript.Engine.ParticleSystem;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleEmitter;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.InterpCurveEdSetup;

extern(C++) interface ParticleSystem : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleSystem")()); }
	private static __gshared ParticleSystem mDefaultProperties;
	@property final static ParticleSystem DefaultProperties() { mixin(MGDPC!(ParticleSystem, "ParticleSystem Engine.Default__ParticleSystem")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetCurrentLODMethod;
			ScriptFunction mGetLODLevelCount;
			ScriptFunction mGetLODDistance;
			ScriptFunction mSetCurrentLODMethod;
			ScriptFunction mSetLODDistance;
		}
		public @property static final
		{
			ScriptFunction GetCurrentLODMethod() { mixin(MGF!("mGetCurrentLODMethod", "Function Engine.ParticleSystem.GetCurrentLODMethod")()); }
			ScriptFunction GetLODLevelCount() { mixin(MGF!("mGetLODLevelCount", "Function Engine.ParticleSystem.GetLODLevelCount")()); }
			ScriptFunction GetLODDistance() { mixin(MGF!("mGetLODDistance", "Function Engine.ParticleSystem.GetLODDistance")()); }
			ScriptFunction SetCurrentLODMethod() { mixin(MGF!("mSetCurrentLODMethod", "Function Engine.ParticleSystem.SetCurrentLODMethod")()); }
			ScriptFunction SetLODDistance() { mixin(MGF!("mSetLODDistance", "Function Engine.ParticleSystem.SetLODDistance")()); }
		}
	}
	enum ParticleSystemLODMethod : ubyte
	{
		PARTICLESYSTEMLODMETHOD_Automatic = 0,
		PARTICLESYSTEMLODMETHOD_DirectSet = 1,
		PARTICLESYSTEMLODMETHOD_ActivateAutomatic = 2,
		PARTICLESYSTEMLODMETHOD_MAX = 3,
	}
	enum EParticleSystemOcclusionBoundsMethod : ubyte
	{
		EPSOBM_None = 0,
		EPSOBM_ParticleBounds = 1,
		EPSOBM_CustomBounds = 2,
		EPSOBM_MAX = 3,
	}
	enum EParticleSystemUpdateMode : ubyte
	{
		EPSUM_RealTime = 0,
		EPSUM_FixedTime = 1,
		EPSUM_MAX = 2,
	}
	struct ParticleSystemLOD
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ParticleSystem.ParticleSystemLOD")()); }
		@property final
		{
			bool bLit() { mixin(MGBPS!(0, 0x1)()); }
			bool bLit(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	struct LODSoloTrack
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ParticleSystem.LODSoloTrack")()); }
		@property final auto ref ScriptArray!(ubyte) SoloEnableSetting() { mixin(MGPS!("ScriptArray!(ubyte)", 0)()); }
	}
	@property final
	{
		auto ref
		{
			ParticleSystem.EParticleSystemUpdateMode SystemUpdateMode() { mixin(MGPC!("ParticleSystem.EParticleSystemUpdateMode", 60)()); }
			ParticleSystem.ParticleSystemLODMethod LODMethod() { mixin(MGPC!("ParticleSystem.ParticleSystemLODMethod", 61)()); }
			ParticleSystem.EParticleSystemOcclusionBoundsMethod OcclusionBoundsMethod() { mixin(MGPC!("ParticleSystem.EParticleSystemOcclusionBoundsMethod", 62)()); }
			float UpdateTime_FPS() { mixin(MGPC!("float", 64)()); }
			float UpdateTime_Delta() { mixin(MGPC!("float", 68)()); }
			float WarmupTime() { mixin(MGPC!("float", 72)()); }
			ScriptArray!(ParticleEmitter) Emitters() { mixin(MGPC!("ScriptArray!(ParticleEmitter)", 76)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewComponent'!
			Rotator ThumbnailAngle() { mixin(MGPC!("Rotator", 92)()); }
			float ThumbnailDistance() { mixin(MGPC!("float", 104)()); }
			float ThumbnailWarmup() { mixin(MGPC!("float", 108)()); }
			InterpCurveEdSetup CurveEdSetup() { mixin(MGPC!("InterpCurveEdSetup", 116)()); }
			float LODDistanceCheckTime() { mixin(MGPC!("float", 120)()); }
			ScriptArray!(float) LODDistances() { mixin(MGPC!("ScriptArray!(float)", 124)()); }
			int EditorLODSetting() { mixin(MGPC!("int", 136)()); }
			ScriptArray!(ParticleSystem.ParticleSystemLOD) LODSettings() { mixin(MGPC!("ScriptArray!(ParticleSystem.ParticleSystemLOD)", 140)()); }
			UObject.Box FixedRelativeBoundingBox() { mixin(MGPC!("UObject.Box", 152)()); }
			float SecondsBeforeInactive() { mixin(MGPC!("float", 180)()); }
			ScriptString FloorMesh() { mixin(MGPC!("ScriptString", 184)()); }
			Vector FloorPosition() { mixin(MGPC!("Vector", 196)()); }
			Rotator FloorRotation() { mixin(MGPC!("Rotator", 208)()); }
			float FloorScale() { mixin(MGPC!("float", 220)()); }
			Vector FloorScale3D() { mixin(MGPC!("Vector", 224)()); }
			UObject.Color BackgroundColor() { mixin(MGPC!("UObject.Color", 236)()); }
			Texture2D ThumbnailImage() { mixin(MGPC!("Texture2D", 240)()); }
			float Delay() { mixin(MGPC!("float", 244)()); }
			float DelayLow() { mixin(MGPC!("float", 248)()); }
			Vector MacroUVPosition() { mixin(MGPC!("Vector", 252)()); }
			float MacroUVRadius() { mixin(MGPC!("float", 264)()); }
			UObject.Box CustomOcclusionBounds() { mixin(MGPC!("UObject.Box", 268)()); }
			ScriptArray!(ParticleSystem.LODSoloTrack) SoloTracking() { mixin(MGPC!("ScriptArray!(ParticleSystem.LODSoloTrack)", 296)()); }
		}
		bool bLit() { mixin(MGBPC!(112, 0x1)()); }
		bool bLit(bool val) { mixin(MSBPC!(112, 0x1)()); }
		bool bOrientZAxisTowardCamera() { mixin(MGBPC!(112, 0x2)()); }
		bool bOrientZAxisTowardCamera(bool val) { mixin(MSBPC!(112, 0x2)()); }
		bool bRegenerateLODDuplicate() { mixin(MGBPC!(112, 0x4)()); }
		bool bRegenerateLODDuplicate(bool val) { mixin(MSBPC!(112, 0x4)()); }
		bool bUseFixedRelativeBoundingBox() { mixin(MGBPC!(112, 0x8)()); }
		bool bUseFixedRelativeBoundingBox(bool val) { mixin(MSBPC!(112, 0x8)()); }
		bool bShouldResetPeakCounts() { mixin(MGBPC!(112, 0x10)()); }
		bool bShouldResetPeakCounts(bool val) { mixin(MSBPC!(112, 0x10)()); }
		bool bHasPhysics() { mixin(MGBPC!(112, 0x20)()); }
		bool bHasPhysics(bool val) { mixin(MSBPC!(112, 0x20)()); }
		bool bUseRealtimeThumbnail() { mixin(MGBPC!(112, 0x40)()); }
		bool bUseRealtimeThumbnail(bool val) { mixin(MSBPC!(112, 0x40)()); }
		bool ThumbnailImageOutOfDate() { mixin(MGBPC!(112, 0x80)()); }
		bool ThumbnailImageOutOfDate(bool val) { mixin(MSBPC!(112, 0x80)()); }
		bool bSkipSpawnCountCheck() { mixin(MGBPC!(112, 0x100)()); }
		bool bSkipSpawnCountCheck(bool val) { mixin(MSBPC!(112, 0x100)()); }
		bool bUseDelayRange() { mixin(MGBPC!(112, 0x200)()); }
		bool bUseDelayRange(bool val) { mixin(MSBPC!(112, 0x200)()); }
		bool bUseMobilePointSprites() { mixin(MGBPC!(112, 0x400)()); }
		bool bUseMobilePointSprites(bool val) { mixin(MSBPC!(112, 0x400)()); }
	}
final:
	ParticleSystem.ParticleSystemLODMethod GetCurrentLODMethod()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentLODMethod, params.ptr, cast(void*)0);
		return *cast(ParticleSystem.ParticleSystemLODMethod*)params.ptr;
	}
	int GetLODLevelCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLODLevelCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	float GetLODDistance(int LODLevelIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LODLevelIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLODDistance, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void SetCurrentLODMethod(ParticleSystem.ParticleSystemLODMethod InMethod)
	{
		ubyte params[1];
		params[] = 0;
		*cast(ParticleSystem.ParticleSystemLODMethod*)params.ptr = InMethod;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentLODMethod, params.ptr, cast(void*)0);
	}
	bool SetLODDistance(int LODLevelIndex, float InDistance)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = LODLevelIndex;
		*cast(float*)&params[4] = InDistance;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLODDistance, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
