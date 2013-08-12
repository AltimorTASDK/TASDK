module UnrealScript.Engine.KismetBookMark;

import ScriptClasses;
import UnrealScript.Engine.BookMark2D;

extern(C++) interface KismetBookMark : BookMark2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.KismetBookMark")); }
	@property final auto ref ScriptString BookMarkSequencePathName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
}
