module UnrealScript.Core.Component;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Component : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptClass TemplateOwnerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 60); }
		ScriptName TemplateName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
	}
}
