module UnrealScript.Engine.SmokeTestCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface SmokeTestCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SmokeTestCommandlet")()); }
	private static __gshared SmokeTestCommandlet mDefaultProperties;
	@property final static SmokeTestCommandlet DefaultProperties() { mixin(MGDPC!(SmokeTestCommandlet, "SmokeTestCommandlet Engine.Default__SmokeTestCommandlet")()); }
}
