module UnrealScript.UnrealEd.PatchScriptCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface PatchScriptCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PatchScriptCommandlet")()); }
	private static __gshared PatchScriptCommandlet mDefaultProperties;
	@property final static PatchScriptCommandlet DefaultProperties() { mixin(MGDPC!(PatchScriptCommandlet, "PatchScriptCommandlet UnrealEd.Default__PatchScriptCommandlet")()); }
}
