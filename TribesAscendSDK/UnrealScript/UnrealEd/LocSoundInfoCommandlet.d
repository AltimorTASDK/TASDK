module UnrealScript.UnrealEd.LocSoundInfoCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface LocSoundInfoCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.LocSoundInfoCommandlet")()); }
	private static __gshared LocSoundInfoCommandlet mDefaultProperties;
	@property final static LocSoundInfoCommandlet DefaultProperties() { mixin(MGDPC!(LocSoundInfoCommandlet, "LocSoundInfoCommandlet UnrealEd.Default__LocSoundInfoCommandlet")()); }
}
