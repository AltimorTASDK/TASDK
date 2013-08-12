module UnrealScript.Engine.ParticleEmitter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleLODLevel;

extern(C++) interface ParticleEmitter : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleEmitter")); }
	private static __gshared ParticleEmitter mDefaultProperties;
	@property final static ParticleEmitter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleEmitter)("ParticleEmitter Engine.Default__ParticleEmitter")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleEmitter.ParticleBurst")); }
		@property final auto ref
		{
			float Time() { return *cast(float*)(cast(size_t)&this + 8); }
			int CountLow() { return *cast(int*)(cast(size_t)&this + 4); }
			int Count() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ParticleLODLevel) LODLevels() { return *cast(ScriptArray!(ParticleLODLevel)*)(cast(size_t)cast(void*)this + 80); }
			int InitialAllocationCount() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
			int PeakActiveParticles() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
			UObject.Color EmitterEditorColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 76); }
			ParticleEmitter.EEmitterRenderMode EmitterRenderMode() { return *cast(ParticleEmitter.EEmitterRenderMode*)(cast(size_t)cast(void*)this + 72); }
			int SubUVDataOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			ScriptName EmitterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bCookedOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x8) != 0; }
		bool bCookedOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x8; } return val; }
		bool bIsSoloing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x4) != 0; }
		bool bIsSoloing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x4; } return val; }
		bool bCollapsed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x2) != 0; }
		bool bCollapsed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x2; } return val; }
		bool ConvertedModules() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x1) != 0; }
		bool ConvertedModules(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x1; } return val; }
	}
}
