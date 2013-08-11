module UnrealScript.Engine.SoundNodeLooping;

import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeLooping : SoundNode
{
	public @property final auto ref DistributionFloat.RawDistributionFloat LoopCount() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float LoopCountMax() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float LoopCountMin() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final bool bLoopIndefinitely() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
	public @property final bool bLoopIndefinitely(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
}
