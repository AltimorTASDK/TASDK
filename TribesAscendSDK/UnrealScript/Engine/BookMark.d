module UnrealScript.Engine.BookMark;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface BookMark : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.BookMark")); }
	@property final auto ref
	{
		Rotator Rotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 72); }
		Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 60); }
	}
}
