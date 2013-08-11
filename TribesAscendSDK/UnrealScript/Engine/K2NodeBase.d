module UnrealScript.Engine.K2NodeBase;

import ScriptClasses;
import UnrealScript.Engine.K2Output;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2NodeBase : UObject
{
	public @property final auto ref ScriptArray!(K2Input) Inputs() { return *cast(ScriptArray!(K2Input)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(K2Output) Outputs() { return *cast(ScriptArray!(K2Output)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int NodePosY() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int NodePosX() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
}
