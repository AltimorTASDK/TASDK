module UnrealScript.Engine.StringsTag;

import ScriptClasses;
import UnrealScript.Engine.TranslatorTag;

extern(C++) interface StringsTag : TranslatorTag
{
public extern(D):
	final ScriptString Translate(ScriptString InArgument)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InArgument;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27224], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
