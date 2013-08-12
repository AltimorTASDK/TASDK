module UnrealScript.Engine.K2Input;

import ScriptClasses;
import UnrealScript.Engine.K2Output;
import UnrealScript.Engine.K2Connector;

extern(C++) interface K2Input : K2Connector
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Input")); }
	@property final auto ref K2Output FromOutput() { return *cast(K2Output*)(cast(size_t)cast(void*)this + 80); }
}
