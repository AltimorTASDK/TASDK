module UnrealScript.Engine.SoundNodeAttenuation;

import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeAttenuation : SoundNode
{
public extern(D):
	enum ESoundDistanceCalc : ubyte
	{
		SOUNDDISTANCE_Normal = 0,
		SOUNDDISTANCE_InfiniteXYPlane = 1,
		SOUNDDISTANCE_InfiniteXZPlane = 2,
		SOUNDDISTANCE_InfiniteYZPlane = 3,
		SOUNDDISTANCE_MAX = 4,
	}
	enum SoundDistanceModel : ubyte
	{
		ATTENUATION_Linear = 0,
		ATTENUATION_Logarithmic = 1,
		ATTENUATION_Inverse = 2,
		ATTENUATION_LogReverse = 3,
		ATTENUATION_NaturalSound = 4,
		ATTENUATION_MAX = 5,
	}
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat LPFMaxRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 188); }
			DistributionFloat.RawDistributionFloat LPFMinRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 160); }
			DistributionFloat.RawDistributionFloat MaxRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 132); }
			DistributionFloat.RawDistributionFloat MinRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 104); }
			float LPFRadiusMax() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float LPFRadiusMin() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float RadiusMax() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float RadiusMin() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			SoundNodeAttenuation.SoundDistanceModel DistanceModel() { return *cast(SoundNodeAttenuation.SoundDistanceModel*)(cast(size_t)cast(void*)this + 86); }
			SoundNodeAttenuation.ESoundDistanceCalc DistanceType() { return *cast(SoundNodeAttenuation.ESoundDistanceCalc*)(cast(size_t)cast(void*)this + 85); }
			SoundNodeAttenuation.SoundDistanceModel DistanceAlgorithm() { return *cast(SoundNodeAttenuation.SoundDistanceModel*)(cast(size_t)cast(void*)this + 84); }
			float dBAttenuationAtMax() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bAttenuateWithLowPassFilter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x8) != 0; }
		bool bAttenuateWithLowPassFilter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x8; } return val; }
		bool bAttenuateWithLPF() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x4) != 0; }
		bool bAttenuateWithLPF(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x4; } return val; }
		bool bSpatialize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool bSpatialize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool bAttenuate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool bAttenuate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
}
