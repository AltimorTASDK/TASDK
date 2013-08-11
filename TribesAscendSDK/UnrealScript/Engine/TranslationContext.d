module UnrealScript.Engine.TranslationContext;

import ScriptClasses;
import UnrealScript.Engine.TranslatorTag;
import UnrealScript.Core.UObject;

extern(C++) interface TranslationContext : UObject
{
public extern(D):
	@property final auto ref ScriptArray!(TranslatorTag) TranslatorTags() { return *cast(ScriptArray!(TranslatorTag)*)(cast(size_t)cast(void*)this + 60); }
	final bool RegisterTranslatorTag(TranslatorTag InTagHandler)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TranslatorTag*)params.ptr = InTagHandler;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28012], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
