module UnrealScript.UnrealEd.FindUniqueSpecularTextureMaterialsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindUniqueSpecularTextureMaterialsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindUniqueSpecularTextureMaterialsCommandlet")()); }
	private static __gshared FindUniqueSpecularTextureMaterialsCommandlet mDefaultProperties;
	@property final static FindUniqueSpecularTextureMaterialsCommandlet DefaultProperties() { mixin(MGDPC!(FindUniqueSpecularTextureMaterialsCommandlet, "FindUniqueSpecularTextureMaterialsCommandlet UnrealEd.Default__FindUniqueSpecularTextureMaterialsCommandlet")()); }
}
