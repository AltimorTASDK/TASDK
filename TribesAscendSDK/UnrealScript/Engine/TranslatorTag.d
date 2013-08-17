module UnrealScript.Engine.TranslatorTag;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TranslatorTag : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TranslatorTag")()); }
	private static __gshared TranslatorTag mDefaultProperties;
	@property final static TranslatorTag DefaultProperties() { mixin(MGDPC!(TranslatorTag, "TranslatorTag Engine.Default__TranslatorTag")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTranslate;
		public @property static final ScriptFunction Translate() { mixin(MGF!("mTranslate", "Function Engine.TranslatorTag.Translate")()); }
	}
	@property final auto ref ScriptName Tag() { mixin(MGPC!("ScriptName", 60)()); }
	final ScriptString Translate(ScriptString InArgument)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InArgument;
		(cast(ScriptObject)this).ProcessEvent(Functions.Translate, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
