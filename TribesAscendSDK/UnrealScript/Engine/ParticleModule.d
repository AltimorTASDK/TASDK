module UnrealScript.Engine.ParticleModule;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ParticleModule : UObject
{
public extern(D):
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
		@property final auto ref
		{
			UObject CurveObject() { return *cast(UObject*)(cast(size_t)&this + 12); }
			ScriptString CurveName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct ParticleRandomSeedInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(int) RandomSeeds() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 12); }
				ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bResetSeedOnEmitterLooping() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x4) != 0; }
			bool bResetSeedOnEmitterLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x4; } return val; }
			bool bInstanceSeedIsIndex() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x2) != 0; }
			bool bInstanceSeedIsIndex(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x2; } return val; }
			bool bGetSeedFromInstance() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
			bool bGetSeedFromInstance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Color ModuleEditorColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 68); }
			ubyte LODValidity() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bRequiresLoopingNotification() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x400) != 0; }
		bool bRequiresLoopingNotification(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x400; } return val; }
		bool bSupportsRandomSeed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x200) != 0; }
		bool bSupportsRandomSeed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x200; } return val; }
		bool LODDuplicate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x100) != 0; }
		bool LODDuplicate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x100; } return val; }
		bool bEditable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x80) != 0; }
		bool bEditable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x80; } return val; }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x40) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x40; } return val; }
		bool bSupported3DDrawMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20) != 0; }
		bool bSupported3DDrawMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20; } return val; }
		bool b3DDrawMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
		bool b3DDrawMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
		bool bCurvesAsColor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
		bool bCurvesAsColor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
		bool bFinalUpdateModule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
		bool bFinalUpdateModule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
		bool bUpdateModule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bUpdateModule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
		bool bSpawnModule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bSpawnModule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
}
