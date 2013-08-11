module UnrealScript.Engine.ParticleModuleTypeDataBeam;

import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataBeam : ParticleModuleTypeDataBase
{
public extern(D):
	enum EBeamMethod : ubyte
	{
		PEBM_Distance = 0,
		PEBM_EndPoints = 1,
		PEBM_EndPoints_Interpolated = 2,
		PEBM_UserSet_EndPoints = 3,
		PEBM_UserSet_EndPoints_Interpolated = 4,
		PEBM_MAX = 5,
	}
	enum EBeamEndPointMethod : ubyte
	{
		PEBEPM_Calculated = 0,
		PEBEPM_Distribution = 1,
		PEBEPM_Distribution_Constant = 2,
		PEBEPM_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			int TextureTile() { return *cast(int*)(cast(size_t)cast(void*)this + 220); }
			DistributionVector.RawDistributionVector EndPointDirection() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 192); }
			DistributionFloat.RawDistributionFloat TargetStrength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 164); }
			DistributionFloat.RawDistributionFloat EmitterStrength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 136); }
			int TessellationFactor() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
			DistributionVector.RawDistributionVector EndPoint() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 104); }
			DistributionFloat.RawDistributionFloat Distance() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 76); }
			ParticleModuleTypeDataBeam.EBeamEndPointMethod EndPointMethod() { return *cast(ParticleModuleTypeDataBeam.EBeamEndPointMethod*)(cast(size_t)cast(void*)this + 73); }
			ParticleModuleTypeDataBeam.EBeamMethod BeamMethod() { return *cast(ParticleModuleTypeDataBeam.EBeamMethod*)(cast(size_t)cast(void*)this + 72); }
		}
		bool RenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 224) & 0x8) != 0; }
		bool RenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 224) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 224) &= ~0x8; } return val; }
		bool RenderLines() { return (*cast(uint*)(cast(size_t)cast(void*)this + 224) & 0x4) != 0; }
		bool RenderLines(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 224) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 224) &= ~0x4; } return val; }
		bool RenderDirectLine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 224) & 0x2) != 0; }
		bool RenderDirectLine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 224) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 224) &= ~0x2; } return val; }
		bool RenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 224) & 0x1) != 0; }
		bool RenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 224) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 224) &= ~0x1; } return val; }
	}
}
