module UnrealScript.Engine.SoundNodeOscillator;

import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeOscillator : SoundNode
{
	public @property final auto ref DistributionFloat.RawDistributionFloat Center() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Offset() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Frequency() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Amplitude() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float CenterMax() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float CenterMin() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float OffsetMax() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float OffsetMin() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float FrequencyMax() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float FrequencyMin() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float AmplitudeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float AmplitudeMin() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final bool bModulatePitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
	public @property final bool bModulatePitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
	public @property final bool bModulateVolume() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
	public @property final bool bModulateVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
}
