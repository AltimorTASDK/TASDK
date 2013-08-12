module UnrealScript.UnrealEd.AnalyzeScriptCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeScriptCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnalyzeScriptCommandlet")); }
	private static __gshared AnalyzeScriptCommandlet mDefaultProperties;
	@property final static AnalyzeScriptCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnalyzeScriptCommandlet)("AnalyzeScriptCommandlet UnrealEd.Default__AnalyzeScriptCommandlet")); }
}
