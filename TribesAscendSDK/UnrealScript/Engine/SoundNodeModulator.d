module UnrealScript.Engine.SoundNodeModulator;

import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeModulator : SoundNode
{
	public @property final auto ref DistributionFloat.RawDistributionFloat VolumeModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref DistributionFloat.RawDistributionFloat PitchModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float VolumeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float VolumeMin() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float PitchMax() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float PitchMin() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
}
