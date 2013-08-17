module UnrealScript.UnrealEd.ConformCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ConformCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ConformCommandlet")); }
	private static __gshared ConformCommandlet mDefaultProperties;
	@property final static ConformCommandlet DefaultProperties() { mixin(MGDPC("ConformCommandlet", "ConformCommandlet UnrealEd.Default__ConformCommandlet")); }
}
