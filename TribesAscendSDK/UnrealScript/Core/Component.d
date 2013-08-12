module UnrealScript.Core.Component;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Component : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Component")); }
	@property final auto ref
	{
		ScriptClass TemplateOwnerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 60); }
		ScriptName TemplateName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
	}
}
