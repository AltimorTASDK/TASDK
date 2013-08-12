module UnrealScript.UnrealEd.AnalyzeCookedPackagesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeCookedPackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnalyzeCookedPackagesCommandlet")); }
	private static __gshared AnalyzeCookedPackagesCommandlet mDefaultProperties;
	@property final static AnalyzeCookedPackagesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnalyzeCookedPackagesCommandlet)("AnalyzeCookedPackagesCommandlet UnrealEd.Default__AnalyzeCookedPackagesCommandlet")); }
}
