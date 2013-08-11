module UnrealScript.Engine.ParticleModuleTypeDataBeam2;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataBeam2 : ParticleModuleTypeDataBase
{
	enum EBeam2Method : ubyte
	{
		PEB2M_Distance = 0,
		PEB2M_Target = 1,
		PEB2M_Branch = 2,
		PEB2M_MAX = 3,
	}
	enum EBeamTaperMethod : ubyte
	{
		PEBTM_None = 0,
		PEBTM_Full = 1,
		PEBTM_Partial = 2,
		PEBTM_MAX = 3,
	}
	struct BeamTargetData
	{
		public @property final auto ref float TargetPercentage() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __TargetPercentage[4];
		public @property final auto ref ScriptName TargetName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __TargetName[8];
	}
	public @property final auto ref DistributionFloat.RawDistributionFloat TaperScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref DistributionFloat.RawDistributionFloat TaperFactor() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Distance() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref ScriptName BranchParentName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int UpVectorStepSize() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	public @property final bool RenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x10) != 0; }
	public @property final bool RenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x10; } return val; }
	public @property final bool RenderLines() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x8) != 0; }
	public @property final bool RenderLines(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x8; } return val; }
	public @property final bool RenderDirectLine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
	public @property final bool RenderDirectLine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
	public @property final bool RenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
	public @property final bool RenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
	public @property final bool bAlwaysOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bAlwaysOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	public @property final auto ref int InterpolationPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int MaxBeamCount() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int Sheets() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float TextureTileDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int TextureTile() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ParticleModuleTypeDataBeam2.EBeamTaperMethod TaperMethod() { return *cast(ParticleModuleTypeDataBeam2.EBeamTaperMethod*)(cast(size_t)cast(void*)this + 73); }
	public @property final auto ref ParticleModuleTypeDataBeam2.EBeam2Method BeamMethod() { return *cast(ParticleModuleTypeDataBeam2.EBeam2Method*)(cast(size_t)cast(void*)this + 72); }
}
