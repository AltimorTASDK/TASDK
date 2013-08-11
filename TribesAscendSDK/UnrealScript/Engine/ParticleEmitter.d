module UnrealScript.Engine.ParticleEmitter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleLODLevel;

extern(C++) interface ParticleEmitter : UObject
{
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
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Time[4];
		public @property final auto ref int CountLow() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __CountLow[4];
		public @property final auto ref int Count() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Count[4];
	}
	public @property final auto ref ScriptArray!(ParticleLODLevel) LODLevels() { return *cast(ScriptArray!(ParticleLODLevel)*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int InitialAllocationCount() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref int PeakActiveParticles() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final bool bCookedOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x8) != 0; }
	public @property final bool bCookedOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x8; } return val; }
	public @property final bool bIsSoloing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x4) != 0; }
	public @property final bool bIsSoloing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x4; } return val; }
	public @property final bool bCollapsed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x2) != 0; }
	public @property final bool bCollapsed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x2; } return val; }
	public @property final bool ConvertedModules() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x1) != 0; }
	public @property final bool ConvertedModules(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x1; } return val; }
	public @property final auto ref UObject.Color EmitterEditorColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ParticleEmitter.EEmitterRenderMode EmitterRenderMode() { return *cast(ParticleEmitter.EEmitterRenderMode*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int SubUVDataOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref ScriptName EmitterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
}
