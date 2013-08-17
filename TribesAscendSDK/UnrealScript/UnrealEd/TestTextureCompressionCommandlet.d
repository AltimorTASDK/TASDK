module UnrealScript.UnrealEd.TestTextureCompressionCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface TestTextureCompressionCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.TestTextureCompressionCommandlet")()); }
	private static __gshared TestTextureCompressionCommandlet mDefaultProperties;
	@property final static TestTextureCompressionCommandlet DefaultProperties() { mixin(MGDPC!(TestTextureCompressionCommandlet, "TestTextureCompressionCommandlet UnrealEd.Default__TestTextureCompressionCommandlet")()); }
}
