module UnrealScript.UnrealEd.PIEToNormalCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface PIEToNormalCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PIEToNormalCommandlet")()); }
	private static __gshared PIEToNormalCommandlet mDefaultProperties;
	@property final static PIEToNormalCommandlet DefaultProperties() { mixin(MGDPC!(PIEToNormalCommandlet, "PIEToNormalCommandlet UnrealEd.Default__PIEToNormalCommandlet")()); }
}
