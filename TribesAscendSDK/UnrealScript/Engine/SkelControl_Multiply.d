module UnrealScript.Engine.SkelControl_Multiply;

import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_Multiply : SkelControlBase
{
	public @property final auto ref float Multiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
}
