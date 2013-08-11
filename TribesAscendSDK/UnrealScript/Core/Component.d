module UnrealScript.Core.Component;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Component : UObject
{
	public @property final auto ref ScriptClass TemplateOwnerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptName TemplateName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
}
