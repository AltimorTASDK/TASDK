module UnrealScript.Core.TextBuffer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TextBuffer : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.TextBuffer")()); }
	private static __gshared TextBuffer mDefaultProperties;
	@property final static TextBuffer DefaultProperties() { mixin(MGDPC!(TextBuffer, "TextBuffer Core.Default__TextBuffer")()); }
}
