module UnrealScript.Engine.AICommandNodeRoot;

import ScriptClasses;
import UnrealScript.Engine.AICommandNodeBase;

extern(C++) interface AICommandNodeRoot : AICommandNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AICommandNodeRoot")); }
	@property final auto ref ScriptName RootName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 100); }
}
