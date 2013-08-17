module UnrealScript.UnrealEd.TestCompressionCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface TestCompressionCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TestCompressionCommandlet")); }
	private static __gshared TestCompressionCommandlet mDefaultProperties;
	@property final static TestCompressionCommandlet DefaultProperties() { mixin(MGDPC("TestCompressionCommandlet", "TestCompressionCommandlet UnrealEd.Default__TestCompressionCommandlet")); }
}
