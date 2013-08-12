module UnrealScript.Engine.K2Input_String;

import ScriptClasses;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_String : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Input_String")); }
	@property final auto ref ScriptString DefaultString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
}
