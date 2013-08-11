module UnrealScript.Engine.BookMark;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface BookMark : UObject
{
public extern(D):
	@property final auto ref
	{
		Rotator Rotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 72); }
		Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 60); }
	}
}
