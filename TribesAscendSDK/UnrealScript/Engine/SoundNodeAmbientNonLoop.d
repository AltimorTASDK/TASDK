module UnrealScript.Engine.SoundNodeAmbientNonLoop;

import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.SoundNodeAmbient;

extern(C++) interface SoundNodeAmbientNonLoop : SoundNodeAmbient
{
public extern(D):
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat DelayTime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 312); }
		float DelayMax() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
		float DelayMin() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
	}
}
