module UnrealScript.UnrealEd.PerformMapCheckCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface PerformMapCheckCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PerformMapCheckCommandlet")); }
	private static __gshared PerformMapCheckCommandlet mDefaultProperties;
	@property final static PerformMapCheckCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PerformMapCheckCommandlet)("PerformMapCheckCommandlet UnrealEd.Default__PerformMapCheckCommandlet")); }
}
