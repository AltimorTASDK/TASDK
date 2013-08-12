module UnrealScript.UnrealEd.AnalyzeKismetCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeKismetCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnalyzeKismetCommandlet")); }
	private static __gshared AnalyzeKismetCommandlet mDefaultProperties;
	@property final static AnalyzeKismetCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnalyzeKismetCommandlet)("AnalyzeKismetCommandlet UnrealEd.Default__AnalyzeKismetCommandlet")); }
}
