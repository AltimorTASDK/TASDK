module UnrealScript.Engine.K2GraphBase;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.K2NodeBase;

extern(C++) interface K2GraphBase : UObject
{
	public @property final auto ref ScriptArray!(K2NodeBase) Nodes() { return *cast(ScriptArray!(K2NodeBase)*)(cast(size_t)cast(void*)this + 60); }
}
