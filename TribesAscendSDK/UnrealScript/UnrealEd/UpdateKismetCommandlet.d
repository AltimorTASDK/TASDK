module UnrealScript.UnrealEd.UpdateKismetCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface UpdateKismetCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.UpdateKismetCommandlet")()); }
	private static __gshared UpdateKismetCommandlet mDefaultProperties;
	@property final static UpdateKismetCommandlet DefaultProperties() { mixin(MGDPC!(UpdateKismetCommandlet, "UpdateKismetCommandlet UnrealEd.Default__UpdateKismetCommandlet")()); }
}
