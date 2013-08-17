module UnrealScript.UnrealEd.AnalyzeCookedContentCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeCookedContentCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.AnalyzeCookedContentCommandlet")()); }
	private static __gshared AnalyzeCookedContentCommandlet mDefaultProperties;
	@property final static AnalyzeCookedContentCommandlet DefaultProperties() { mixin(MGDPC!(AnalyzeCookedContentCommandlet, "AnalyzeCookedContentCommandlet UnrealEd.Default__AnalyzeCookedContentCommandlet")()); }
}
