module UnrealScript.UDKBase.UDKAnimBlendBySlotActive;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.Engine.AnimNodeBlendPerBone;

extern(C++) interface UDKAnimBlendBySlotActive : AnimNodeBlendPerBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendBySlotActive")); }
	@property final auto ref AnimNodeSlot ChildSlot() { return *cast(AnimNodeSlot*)(cast(size_t)cast(void*)this + 300); }
}
