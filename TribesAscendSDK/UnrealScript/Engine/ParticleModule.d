module UnrealScript.Engine.ParticleModule;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ParticleModule : UObject
{
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
		public @property final auto ref UObject CurveObject() { return *cast(UObject*)(cast(size_t)&this + 12); }
		private ubyte __CurveObject[4];
		public @property final auto ref ScriptString CurveName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __CurveName[12];
	}
	struct ParticleRandomSeedInfo
	{
		public @property final auto ref ScriptArray!(int) RandomSeeds() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 12); }
		private ubyte __RandomSeeds[12];
		public @property final bool bResetSeedOnEmitterLooping() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x4) != 0; }
		public @property final bool bResetSeedOnEmitterLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x4; } return val; }
		private ubyte __bResetSeedOnEmitterLooping[4];
		public @property final bool bInstanceSeedIsIndex() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x2) != 0; }
		public @property final bool bInstanceSeedIsIndex(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x2; } return val; }
		private ubyte __bInstanceSeedIsIndex[4];
		public @property final bool bGetSeedFromInstance() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool bGetSeedFromInstance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __bGetSeedFromInstance[4];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ParameterName[8];
	}
	public @property final auto ref UObject.Color ModuleEditorColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref ubyte LODValidity() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bRequiresLoopingNotification() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x400) != 0; }
	public @property final bool bRequiresLoopingNotification(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x400; } return val; }
	public @property final bool bSupportsRandomSeed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x200) != 0; }
	public @property final bool bSupportsRandomSeed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x200; } return val; }
	public @property final bool LODDuplicate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x100) != 0; }
	public @property final bool LODDuplicate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x100; } return val; }
	public @property final bool bEditable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x80) != 0; }
	public @property final bool bEditable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x80; } return val; }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x40) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x40; } return val; }
	public @property final bool bSupported3DDrawMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20) != 0; }
	public @property final bool bSupported3DDrawMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20; } return val; }
	public @property final bool b3DDrawMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
	public @property final bool b3DDrawMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
	public @property final bool bCurvesAsColor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
	public @property final bool bCurvesAsColor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	public @property final bool bFinalUpdateModule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
	public @property final bool bFinalUpdateModule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
	public @property final bool bUpdateModule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool bUpdateModule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final bool bSpawnModule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bSpawnModule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
}
