module UnrealScript.Engine.AnimNotify_Script;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Script : AnimNotify
{
	public @property final auto ref ScriptName NotifyEndName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptName NotifyTickName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptName NotifyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
}
