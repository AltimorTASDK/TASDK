module UnrealScript.Engine.AnimNodeScaleRateBySpeed;

import UnrealScript.Engine.AnimNodeScalePlayRate;

extern(C++) interface AnimNodeScaleRateBySpeed : AnimNodeScalePlayRate
{
	public @property final auto ref float BaseSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
}
