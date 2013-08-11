module UnrealScript.Engine.K2Output_Object;

import ScriptClasses;
import UnrealScript.Engine.K2Output;

extern(C++) interface K2Output_Object : K2Output
{
public extern(D):
	@property final auto ref ScriptClass ObjClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
}
