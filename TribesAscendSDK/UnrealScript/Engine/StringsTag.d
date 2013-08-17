module UnrealScript.Engine.StringsTag;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TranslatorTag;

extern(C++) interface StringsTag : TranslatorTag
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.StringsTag")()); }
	private static __gshared StringsTag mDefaultProperties;
	@property final static StringsTag DefaultProperties() { mixin(MGDPC!(StringsTag, "StringsTag Engine.Default__StringsTag")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTranslate;
		public @property static final ScriptFunction Translate() { mixin(MGF!("mTranslate", "Function Engine.StringsTag.Translate")()); }
	}
	final ScriptString Translate(ScriptString InArgument)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InArgument;
		(cast(ScriptObject)this).ProcessEvent(Functions.Translate, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
