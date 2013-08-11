module UnrealScript.Engine.SoundNodeModulatorContinuous;

import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeModulatorContinuous : SoundNode
{
	public @property final auto ref DistributionFloat.RawDistributionFloat VolumeModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref DistributionFloat.RawDistributionFloat PitchModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 76); }
}
