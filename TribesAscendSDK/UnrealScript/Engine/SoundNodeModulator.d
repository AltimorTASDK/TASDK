module UnrealScript.Engine.SoundNodeModulator;

import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeModulator : SoundNode
{
public extern(D):
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat VolumeModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 120); }
		DistributionFloat.RawDistributionFloat PitchModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 92); }
		float VolumeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
		float VolumeMin() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
		float PitchMax() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		float PitchMin() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	}
}
