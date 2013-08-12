module UnrealScript.Engine.K2Input_Int;

import ScriptClasses;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Int : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Input_Int")); }
	@property final auto ref int DefaultInt() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
}
