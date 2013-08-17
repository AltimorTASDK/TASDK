module UnrealScript.Engine.TranslationContext;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TranslatorTag;
import UnrealScript.Core.UObject;

extern(C++) interface TranslationContext : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TranslationContext")()); }
	private static __gshared TranslationContext mDefaultProperties;
	@property final static TranslationContext DefaultProperties() { mixin(MGDPC!(TranslationContext, "TranslationContext Engine.Default__TranslationContext")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRegisterTranslatorTag;
		public @property static final ScriptFunction RegisterTranslatorTag() { mixin(MGF!("mRegisterTranslatorTag", "Function Engine.TranslationContext.RegisterTranslatorTag")()); }
	}
	@property final auto ref ScriptArray!(TranslatorTag) TranslatorTags() { mixin(MGPC!(ScriptArray!(TranslatorTag), 60)()); }
	final bool RegisterTranslatorTag(TranslatorTag InTagHandler)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TranslatorTag*)params.ptr = InTagHandler;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterTranslatorTag, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
