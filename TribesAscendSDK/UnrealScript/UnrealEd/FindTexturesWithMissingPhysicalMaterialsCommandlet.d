module UnrealScript.UnrealEd.FindTexturesWithMissingPhysicalMaterialsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindTexturesWithMissingPhysicalMaterialsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindTexturesWithMissingPhysicalMaterialsCommandlet")()); }
	private static __gshared FindTexturesWithMissingPhysicalMaterialsCommandlet mDefaultProperties;
	@property final static FindTexturesWithMissingPhysicalMaterialsCommandlet DefaultProperties() { mixin(MGDPC!(FindTexturesWithMissingPhysicalMaterialsCommandlet, "FindTexturesWithMissingPhysicalMaterialsCommandlet UnrealEd.Default__FindTexturesWithMissingPhysicalMaterialsCommandlet")()); }
}
