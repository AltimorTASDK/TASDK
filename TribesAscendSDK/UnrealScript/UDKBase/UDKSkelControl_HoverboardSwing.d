module UnrealScript.UDKBase.UDKSkelControl_HoverboardSwing;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HoverboardSwing : SkelControlSingleBone
{
	public @property final auto ref ScriptArray!(float) SwingHistory() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float CurrentSwing() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float MaxUseVel() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float MaxSwing() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float SwingScale() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref int SwingHistorySlot() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref int SwingHistoryWindow() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
}
