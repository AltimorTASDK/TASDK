module UnrealScript.Engine.SoundNodeAmbientNonLoop;

import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.SoundNodeAmbient;

extern(C++) interface SoundNodeAmbientNonLoop : SoundNodeAmbient
{
	public @property final auto ref DistributionFloat.RawDistributionFloat DelayTime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref float DelayMax() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref float DelayMin() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
}
