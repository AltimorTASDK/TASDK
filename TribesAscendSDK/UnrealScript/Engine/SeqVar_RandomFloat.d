module UnrealScript.Engine.SeqVar_RandomFloat;

import ScriptClasses;
import UnrealScript.Engine.SeqVar_Float;

extern(C++) interface SeqVar_RandomFloat : SeqVar_Float
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_RandomFloat")); }
	@property final auto ref
	{
		float Max() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
		float Min() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	}
}
