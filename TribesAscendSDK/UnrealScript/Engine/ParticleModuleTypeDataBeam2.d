module UnrealScript.Engine.ParticleModuleTypeDataBeam2;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataBeam2 : ParticleModuleTypeDataBase
{
public extern(D):
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
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			float TargetPercentage() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName TargetName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat TaperScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 172); }
			DistributionFloat.RawDistributionFloat TaperFactor() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 144); }
			DistributionFloat.RawDistributionFloat Distance() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 116); }
			ScriptName BranchParentName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 108); }
			int UpVectorStepSize() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
			int InterpolationPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
			float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			int MaxBeamCount() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int Sheets() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
			float TextureTileDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			int TextureTile() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
			ParticleModuleTypeDataBeam2.EBeamTaperMethod TaperMethod() { return *cast(ParticleModuleTypeDataBeam2.EBeamTaperMethod*)(cast(size_t)cast(void*)this + 73); }
			ParticleModuleTypeDataBeam2.EBeam2Method BeamMethod() { return *cast(ParticleModuleTypeDataBeam2.EBeam2Method*)(cast(size_t)cast(void*)this + 72); }
		}
		bool RenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x10) != 0; }
		bool RenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x10; } return val; }
		bool RenderLines() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x8) != 0; }
		bool RenderLines(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x8; } return val; }
		bool RenderDirectLine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
		bool RenderDirectLine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
		bool RenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
		bool RenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
		bool bAlwaysOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bAlwaysOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
