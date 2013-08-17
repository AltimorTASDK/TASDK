module UnrealScript.UnrealEd.StripSourceCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface StripSourceCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.StripSourceCommandlet")()); }
	private static __gshared StripSourceCommandlet mDefaultProperties;
	@property final static StripSourceCommandlet DefaultProperties() { mixin(MGDPC!(StripSourceCommandlet, "StripSourceCommandlet UnrealEd.Default__StripSourceCommandlet")()); }
}
