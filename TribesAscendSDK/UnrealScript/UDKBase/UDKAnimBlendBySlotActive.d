module UnrealScript.UDKBase.UDKAnimBlendBySlotActive;

import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.Engine.AnimNodeBlendPerBone;

extern(C++) interface UDKAnimBlendBySlotActive : AnimNodeBlendPerBone
{
public extern(D):
	@property final auto ref AnimNodeSlot ChildSlot() { return *cast(AnimNodeSlot*)(cast(size_t)cast(void*)this + 300); }
}
