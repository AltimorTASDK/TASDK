module UnrealScript.UDKBase.UDKAnimBlendByHoverboarding;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByHoverboarding : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendByHoverboarding")); }
	@property final auto ref
	{
		float FallTimeBeforeAnim() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
		float BoardLeanAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
		int LastActiveChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
	}
}
