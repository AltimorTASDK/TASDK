module UnrealScript.Engine.ParticleSystem;

import ScriptClasses;
import UnrealScript.Engine.ParticleEmitter;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.InterpCurveEdSetup;

extern(C++) interface ParticleSystem : UObject
{
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
		public @property final bool bLit() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bLit(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bLit[4];
	}
	struct LODSoloTrack
	{
		public @property final auto ref ScriptArray!(ubyte) SoloEnableSetting() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 0); }
		private ubyte __SoloEnableSetting[12];
	}
	public @property final auto ref ParticleSystem.EParticleSystemUpdateMode SystemUpdateMode() { return *cast(ParticleSystem.EParticleSystemUpdateMode*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ParticleSystem.ParticleSystemLODMethod LODMethod() { return *cast(ParticleSystem.ParticleSystemLODMethod*)(cast(size_t)cast(void*)this + 61); }
	public @property final auto ref ParticleSystem.EParticleSystemOcclusionBoundsMethod OcclusionBoundsMethod() { return *cast(ParticleSystem.EParticleSystemOcclusionBoundsMethod*)(cast(size_t)cast(void*)this + 62); }
	public @property final auto ref float UpdateTime_FPS() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref float UpdateTime_Delta() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float WarmupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptArray!(ParticleEmitter) Emitters() { return *cast(ScriptArray!(ParticleEmitter)*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref Rotator ThumbnailAngle() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float ThumbnailDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float ThumbnailWarmup() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final bool bLit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
	public @property final bool bLit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	public @property final bool bOrientZAxisTowardCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x2) != 0; }
	public @property final bool bOrientZAxisTowardCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x2; } return val; }
	public @property final bool bRegenerateLODDuplicate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x4) != 0; }
	public @property final bool bRegenerateLODDuplicate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x4; } return val; }
	public @property final bool bUseFixedRelativeBoundingBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x8) != 0; }
	public @property final bool bUseFixedRelativeBoundingBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x8; } return val; }
	public @property final bool bShouldResetPeakCounts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x10) != 0; }
	public @property final bool bShouldResetPeakCounts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x10; } return val; }
	public @property final bool bHasPhysics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x20) != 0; }
	public @property final bool bHasPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x20; } return val; }
	public @property final bool bUseRealtimeThumbnail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x40) != 0; }
	public @property final bool bUseRealtimeThumbnail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x40; } return val; }
	public @property final bool ThumbnailImageOutOfDate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x80) != 0; }
	public @property final bool ThumbnailImageOutOfDate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x80; } return val; }
	public @property final bool bSkipSpawnCountCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x100) != 0; }
	public @property final bool bSkipSpawnCountCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x100; } return val; }
	public @property final bool bUseDelayRange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x200) != 0; }
	public @property final bool bUseDelayRange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x200; } return val; }
	public @property final bool bUseMobilePointSprites() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x400) != 0; }
	public @property final bool bUseMobilePointSprites(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x400; } return val; }
	public @property final auto ref InterpCurveEdSetup CurveEdSetup() { return *cast(InterpCurveEdSetup*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float LODDistanceCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(float) LODDistances() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref int EditorLODSetting() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptArray!(ParticleSystem.ParticleSystemLOD) LODSettings() { return *cast(ScriptArray!(ParticleSystem.ParticleSystemLOD)*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref UObject.Box FixedRelativeBoundingBox() { return *cast(UObject.Box*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float SecondsBeforeInactive() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptString FloorMesh() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref Vector FloorPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref Rotator FloorRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref float FloorScale() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref Vector FloorScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref UObject.Color BackgroundColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref Texture2D ThumbnailImage() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float Delay() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float DelayLow() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref Vector MacroUVPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float MacroUVRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref UObject.Box CustomOcclusionBounds() { return *cast(UObject.Box*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref ScriptArray!(ParticleSystem.LODSoloTrack) SoloTracking() { return *cast(ScriptArray!(ParticleSystem.LODSoloTrack)*)(cast(size_t)cast(void*)this + 296); }
	final ParticleSystem.ParticleSystemLODMethod GetCurrentLODMethod()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23881], params.ptr, cast(void*)0);
		return *cast(ParticleSystem.ParticleSystemLODMethod*)params.ptr;
	}
	final int GetLODLevelCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23883], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final float GetLODDistance(int LODLevelIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LODLevelIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23885], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void SetCurrentLODMethod(ParticleSystem.ParticleSystemLODMethod InMethod)
	{
		ubyte params[1];
		params[] = 0;
		*cast(ParticleSystem.ParticleSystemLODMethod*)params.ptr = InMethod;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23888], params.ptr, cast(void*)0);
	}
	final bool SetLODDistance(int LODLevelIndex, float InDistance)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = LODLevelIndex;
		*cast(float*)&params[4] = InDistance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23890], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
