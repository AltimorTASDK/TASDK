module UnrealScript.Engine.TranslationContext;

import ScriptClasses;
import UnrealScript.Engine.TranslatorTag;
import UnrealScript.Core.UObject;

extern(C++) interface TranslationContext : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TranslationContext")); }
	private static __gshared TranslationContext mDefaultProperties;
	@property final static TranslationContext DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TranslationContext)("TranslationContext Engine.Default__TranslationContext")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRegisterTranslatorTag;
		public @property static final ScriptFunction RegisterTranslatorTag() { return mRegisterTranslatorTag ? mRegisterTranslatorTag : (mRegisterTranslatorTag = ScriptObject.Find!(ScriptFunction)("Function Engine.TranslationContext.RegisterTranslatorTag")); }
	}
	@property final auto ref ScriptArray!(TranslatorTag) TranslatorTags() { return *cast(ScriptArray!(TranslatorTag)*)(cast(size_t)cast(void*)this + 60); }
	final bool RegisterTranslatorTag(TranslatorTag InTagHandler)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TranslatorTag*)params.ptr = InTagHandler;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterTranslatorTag, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
