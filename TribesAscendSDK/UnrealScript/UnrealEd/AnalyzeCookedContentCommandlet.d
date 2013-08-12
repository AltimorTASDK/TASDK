module UnrealScript.UnrealEd.AnalyzeCookedContentCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeCookedContentCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnalyzeCookedContentCommandlet")); }
	private static __gshared AnalyzeCookedContentCommandlet mDefaultProperties;
	@property final static AnalyzeCookedContentCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnalyzeCookedContentCommandlet)("AnalyzeCookedContentCommandlet UnrealEd.Default__AnalyzeCookedContentCommandlet")); }
}
