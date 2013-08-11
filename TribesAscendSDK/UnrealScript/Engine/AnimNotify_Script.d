module UnrealScript.Engine.AnimNotify_Script;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Script : AnimNotify
{
public extern(D):
	@property final auto ref
	{
		ScriptName NotifyEndName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 80); }
		ScriptName NotifyTickName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
		ScriptName NotifyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
	}
}
