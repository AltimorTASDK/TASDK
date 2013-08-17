module UnrealScript.UnrealEd.FindUnreferencedFunctionsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindUnreferencedFunctionsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindUnreferencedFunctionsCommandlet")()); }
	private static __gshared FindUnreferencedFunctionsCommandlet mDefaultProperties;
	@property final static FindUnreferencedFunctionsCommandlet DefaultProperties() { mixin(MGDPC!(FindUnreferencedFunctionsCommandlet, "FindUnreferencedFunctionsCommandlet UnrealEd.Default__FindUnreferencedFunctionsCommandlet")()); }
}
