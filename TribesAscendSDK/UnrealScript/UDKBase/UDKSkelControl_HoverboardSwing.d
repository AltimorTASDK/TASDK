module UnrealScript.UDKBase.UDKSkelControl_HoverboardSwing;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HoverboardSwing : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_HoverboardSwing")); }
	@property final auto ref
	{
		ScriptArray!(float) SwingHistory() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 244); }
		float CurrentSwing() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
		float MaxUseVel() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float MaxSwing() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float SwingScale() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		int SwingHistorySlot() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
		int SwingHistoryWindow() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
	}
}
