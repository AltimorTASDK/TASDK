module UnrealScript.Engine.ParticleSystem;

import ScriptClasses;
import UnrealScript.Engine.ParticleEmitter;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.InterpCurveEdSetup;

extern(C++) interface ParticleSystem : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleSystem")); }
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
			ScriptFunction GetCurrentLODMethod() { return mGetCurrentLODMethod ? mGetCurrentLODMethod : (mGetCurrentLODMethod = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystem.GetCurrentLODMethod")); }
			ScriptFunction GetLODLevelCount() { return mGetLODLevelCount ? mGetLODLevelCount : (mGetLODLevelCount = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystem.GetLODLevelCount")); }
			ScriptFunction GetLODDistance() { return mGetLODDistance ? mGetLODDistance : (mGetLODDistance = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystem.GetLODDistance")); }
			ScriptFunction SetCurrentLODMethod() { return mSetCurrentLODMethod ? mSetCurrentLODMethod : (mSetCurrentLODMethod = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystem.SetCurrentLODMethod")); }
			ScriptFunction SetLODDistance() { return mSetLODDistance ? mSetLODDistance : (mSetLODDistance = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleSystem.SetLODDistance")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystem.ParticleSystemLOD")); }
		@property final
		{
			bool bLit() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bLit(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	struct LODSoloTrack
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystem.LODSoloTrack")); }
		@property final auto ref ScriptArray!(ubyte) SoloEnableSetting() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 0); }
	}
	@property final
	{
		auto ref
		{
			ParticleSystem.EParticleSystemUpdateMode SystemUpdateMode() { return *cast(ParticleSystem.EParticleSystemUpdateMode*)(cast(size_t)cast(void*)this + 60); }
			ParticleSystem.ParticleSystemLODMethod LODMethod() { return *cast(ParticleSystem.ParticleSystemLODMethod*)(cast(size_t)cast(void*)this + 61); }
			ParticleSystem.EParticleSystemOcclusionBoundsMethod OcclusionBoundsMethod() { return *cast(ParticleSystem.EParticleSystemOcclusionBoundsMethod*)(cast(size_t)cast(void*)this + 62); }
			float UpdateTime_FPS() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
			float UpdateTime_Delta() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			float WarmupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			ScriptArray!(ParticleEmitter) Emitters() { return *cast(ScriptArray!(ParticleEmitter)*)(cast(size_t)cast(void*)this + 76); }
			Rotator ThumbnailAngle() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 92); }
			float ThumbnailDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float ThumbnailWarmup() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			InterpCurveEdSetup CurveEdSetup() { return *cast(InterpCurveEdSetup*)(cast(size_t)cast(void*)this + 116); }
			float LODDistanceCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			ScriptArray!(float) LODDistances() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 124); }
			int EditorLODSetting() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
			ScriptArray!(ParticleSystem.ParticleSystemLOD) LODSettings() { return *cast(ScriptArray!(ParticleSystem.ParticleSystemLOD)*)(cast(size_t)cast(void*)this + 140); }
			UObject.Box FixedRelativeBoundingBox() { return *cast(UObject.Box*)(cast(size_t)cast(void*)this + 152); }
			float SecondsBeforeInactive() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			ScriptString FloorMesh() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
			Vector FloorPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 196); }
			Rotator FloorRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 208); }
			float FloorScale() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
			Vector FloorScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 224); }
			UObject.Color BackgroundColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 236); }
			Texture2D ThumbnailImage() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 240); }
			float Delay() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float DelayLow() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			Vector MacroUVPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 252); }
			float MacroUVRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			UObject.Box CustomOcclusionBounds() { return *cast(UObject.Box*)(cast(size_t)cast(void*)this + 268); }
			ScriptArray!(ParticleSystem.LODSoloTrack) SoloTracking() { return *cast(ScriptArray!(ParticleSystem.LODSoloTrack)*)(cast(size_t)cast(void*)this + 296); }
		}
		bool bLit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
		bool bLit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
		bool bOrientZAxisTowardCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x2) != 0; }
		bool bOrientZAxisTowardCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x2; } return val; }
		bool bRegenerateLODDuplicate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x4) != 0; }
		bool bRegenerateLODDuplicate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x4; } return val; }
		bool bUseFixedRelativeBoundingBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x8) != 0; }
		bool bUseFixedRelativeBoundingBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x8; } return val; }
		bool bShouldResetPeakCounts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x10) != 0; }
		bool bShouldResetPeakCounts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x10; } return val; }
		bool bHasPhysics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x20) != 0; }
		bool bHasPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x20; } return val; }
		bool bUseRealtimeThumbnail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x40) != 0; }
		bool bUseRealtimeThumbnail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x40; } return val; }
		bool ThumbnailImageOutOfDate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x80) != 0; }
		bool ThumbnailImageOutOfDate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x80; } return val; }
		bool bSkipSpawnCountCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x100) != 0; }
		bool bSkipSpawnCountCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x100; } return val; }
		bool bUseDelayRange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x200) != 0; }
		bool bUseDelayRange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x200; } return val; }
		bool bUseMobilePointSprites() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x400) != 0; }
		bool bUseMobilePointSprites(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x400; } return val; }
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
