module UnrealScript.UnrealEd.ListScriptReferencedContentCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListScriptReferencedContentCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ListScriptReferencedContentCommandlet")()); }
	private static __gshared ListScriptReferencedContentCommandlet mDefaultProperties;
	@property final static ListScriptReferencedContentCommandlet DefaultProperties() { mixin(MGDPC!(ListScriptReferencedContentCommandlet, "ListScriptReferencedContentCommandlet UnrealEd.Default__ListScriptReferencedContentCommandlet")()); }
}
