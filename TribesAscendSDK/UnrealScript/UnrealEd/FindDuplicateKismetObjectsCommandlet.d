module UnrealScript.UnrealEd.FindDuplicateKismetObjectsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindDuplicateKismetObjectsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindDuplicateKismetObjectsCommandlet")()); }
	private static __gshared FindDuplicateKismetObjectsCommandlet mDefaultProperties;
	@property final static FindDuplicateKismetObjectsCommandlet DefaultProperties() { mixin(MGDPC!(FindDuplicateKismetObjectsCommandlet, "FindDuplicateKismetObjectsCommandlet UnrealEd.Default__FindDuplicateKismetObjectsCommandlet")()); }
}
