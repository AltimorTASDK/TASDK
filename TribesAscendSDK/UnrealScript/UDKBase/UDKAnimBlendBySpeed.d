module UnrealScript.UDKBase.UDKAnimBlendBySpeed;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface UDKAnimBlendBySpeed : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendBySpeed")); }
	@property final auto ref
	{
		float MaxSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float MinSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	}
}
