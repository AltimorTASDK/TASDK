module UnrealScript.UnrealEd.MakeCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface MakeCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.MakeCommandlet")); }
	private static __gshared MakeCommandlet mDefaultProperties;
	@property final static MakeCommandlet DefaultProperties() { mixin(MGDPC("MakeCommandlet", "MakeCommandlet UnrealEd.Default__MakeCommandlet")); }
}
