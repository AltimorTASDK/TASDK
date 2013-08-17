module UnrealScript.UnrealEd.TestWordWrapCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface TestWordWrapCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TestWordWrapCommandlet")); }
	private static __gshared TestWordWrapCommandlet mDefaultProperties;
	@property final static TestWordWrapCommandlet DefaultProperties() { mixin(MGDPC("TestWordWrapCommandlet", "TestWordWrapCommandlet UnrealEd.Default__TestWordWrapCommandlet")); }
}
