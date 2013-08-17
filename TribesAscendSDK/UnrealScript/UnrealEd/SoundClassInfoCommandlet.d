module UnrealScript.UnrealEd.SoundClassInfoCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface SoundClassInfoCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.SoundClassInfoCommandlet")()); }
	private static __gshared SoundClassInfoCommandlet mDefaultProperties;
	@property final static SoundClassInfoCommandlet DefaultProperties() { mixin(MGDPC!(SoundClassInfoCommandlet, "SoundClassInfoCommandlet UnrealEd.Default__SoundClassInfoCommandlet")()); }
}
