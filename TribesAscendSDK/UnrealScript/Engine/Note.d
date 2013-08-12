module UnrealScript.Engine.Note;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface Note : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Note")); }
	@property final auto ref ScriptString Text() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 476); }
}
