module UnrealScript.UnrealEd.ListCorruptedComponentsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListCorruptedComponentsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ListCorruptedComponentsCommandlet")()); }
	private static __gshared ListCorruptedComponentsCommandlet mDefaultProperties;
	@property final static ListCorruptedComponentsCommandlet DefaultProperties() { mixin(MGDPC!(ListCorruptedComponentsCommandlet, "ListCorruptedComponentsCommandlet UnrealEd.Default__ListCorruptedComponentsCommandlet")()); }
}
