module UnrealScript.UnrealEd.AnalyzeScriptCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeScriptCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.AnalyzeScriptCommandlet")); }
	private static __gshared AnalyzeScriptCommandlet mDefaultProperties;
	@property final static AnalyzeScriptCommandlet DefaultProperties() { mixin(MGDPC("AnalyzeScriptCommandlet", "AnalyzeScriptCommandlet UnrealEd.Default__AnalyzeScriptCommandlet")); }
}
