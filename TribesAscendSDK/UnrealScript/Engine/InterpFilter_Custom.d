module UnrealScript.Engine.InterpFilter_Custom;

import ScriptClasses;
import UnrealScript.Engine.InterpFilter;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpFilter_Custom : InterpFilter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpFilter_Custom")); }
	@property final auto ref ScriptArray!(InterpGroup) GroupsToInclude() { return *cast(ScriptArray!(InterpGroup)*)(cast(size_t)cast(void*)this + 72); }
}
