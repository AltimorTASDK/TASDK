module UnrealScript.UnrealEd.AnalyzeContentCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeContentCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnalyzeContentCommandlet")); }
	private static __gshared AnalyzeContentCommandlet mDefaultProperties;
	@property final static AnalyzeContentCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnalyzeContentCommandlet)("AnalyzeContentCommandlet UnrealEd.Default__AnalyzeContentCommandlet")); }
}
