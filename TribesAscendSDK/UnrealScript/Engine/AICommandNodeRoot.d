module UnrealScript.Engine.AICommandNodeRoot;

import ScriptClasses;
import UnrealScript.Engine.AICommandNodeBase;

extern(C++) interface AICommandNodeRoot : AICommandNodeBase
{
public extern(D):
	@property final auto ref ScriptName RootName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 100); }
}
