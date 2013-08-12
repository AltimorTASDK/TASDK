module UnrealScript.UnrealEd.TestWordWrapCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface TestWordWrapCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TestWordWrapCommandlet")); }
	private static __gshared TestWordWrapCommandlet mDefaultProperties;
	@property final static TestWordWrapCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TestWordWrapCommandlet)("TestWordWrapCommandlet UnrealEd.Default__TestWordWrapCommandlet")); }
}
