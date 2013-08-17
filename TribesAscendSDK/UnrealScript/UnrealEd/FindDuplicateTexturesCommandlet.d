module UnrealScript.UnrealEd.FindDuplicateTexturesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindDuplicateTexturesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindDuplicateTexturesCommandlet")()); }
	private static __gshared FindDuplicateTexturesCommandlet mDefaultProperties;
	@property final static FindDuplicateTexturesCommandlet DefaultProperties() { mixin(MGDPC!(FindDuplicateTexturesCommandlet, "FindDuplicateTexturesCommandlet UnrealEd.Default__FindDuplicateTexturesCommandlet")()); }
}
