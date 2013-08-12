module UnrealScript.Engine.ClipPadEntry;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ClipPadEntry : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ClipPadEntry")); }
	@property final auto ref
	{
		ScriptString Text() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
		ScriptString Title() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
	}
}
