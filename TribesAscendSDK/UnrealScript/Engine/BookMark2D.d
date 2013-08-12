module UnrealScript.Engine.BookMark2D;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface BookMark2D : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.BookMark2D")); }
	@property final auto ref
	{
		UObject.IntPoint Location() { return *cast(UObject.IntPoint*)(cast(size_t)cast(void*)this + 64); }
		float Zoom2D() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
	}
}
