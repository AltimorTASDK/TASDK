module UnrealScript.Engine.ServerCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ServerCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ServerCommandlet")()); }
	private static __gshared ServerCommandlet mDefaultProperties;
	@property final static ServerCommandlet DefaultProperties() { mixin(MGDPC!(ServerCommandlet, "ServerCommandlet Engine.Default__ServerCommandlet")()); }
}
