module UnrealScript.Engine.SoundNodeDelay;

import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeDelay : SoundNode
{
	public @property final auto ref DistributionFloat.RawDistributionFloat DelayDuration() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float DelayMax() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float DelayMin() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
}
