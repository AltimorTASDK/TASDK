module UnrealScript.Engine.InterpFilter_Custom;

import ScriptClasses;
import UnrealScript.Engine.InterpFilter;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpFilter_Custom : InterpFilter
{
public extern(D):
	@property final auto ref ScriptArray!(InterpGroup) GroupsToInclude() { return *cast(ScriptArray!(InterpGroup)*)(cast(size_t)cast(void*)this + 72); }
}
