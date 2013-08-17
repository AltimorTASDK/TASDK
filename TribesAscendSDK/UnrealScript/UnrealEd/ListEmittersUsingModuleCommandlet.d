module UnrealScript.UnrealEd.ListEmittersUsingModuleCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListEmittersUsingModuleCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ListEmittersUsingModuleCommandlet")()); }
	private static __gshared ListEmittersUsingModuleCommandlet mDefaultProperties;
	@property final static ListEmittersUsingModuleCommandlet DefaultProperties() { mixin(MGDPC!(ListEmittersUsingModuleCommandlet, "ListEmittersUsingModuleCommandlet UnrealEd.Default__ListEmittersUsingModuleCommandlet")()); }
}
