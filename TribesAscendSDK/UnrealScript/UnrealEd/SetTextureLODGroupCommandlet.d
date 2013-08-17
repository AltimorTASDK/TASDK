module UnrealScript.UnrealEd.SetTextureLODGroupCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface SetTextureLODGroupCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.SetTextureLODGroupCommandlet")()); }
	private static __gshared SetTextureLODGroupCommandlet mDefaultProperties;
	@property final static SetTextureLODGroupCommandlet DefaultProperties() { mixin(MGDPC!(SetTextureLODGroupCommandlet, "SetTextureLODGroupCommandlet UnrealEd.Default__SetTextureLODGroupCommandlet")()); }
}
