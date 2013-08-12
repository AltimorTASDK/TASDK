module UnrealScript.Engine.InterpFilter;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InterpFilter : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpFilter")); }
	@property final auto ref ScriptString Caption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
}
