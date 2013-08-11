module UnrealScript.Engine.TranslatorTag;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TranslatorTag : UObject
{
public extern(D):
	@property final auto ref ScriptName Tag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
	final ScriptString Translate(ScriptString InArgument)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InArgument;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27221], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
