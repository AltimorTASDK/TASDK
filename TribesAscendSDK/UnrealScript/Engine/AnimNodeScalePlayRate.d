module UnrealScript.Engine.AnimNodeScalePlayRate;

import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeScalePlayRate : AnimNodeBlendBase
{
	public @property final auto ref float ScaleByValue() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
}
