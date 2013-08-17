module UnrealScript.PlatformCommon.TgCheatManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CheatManager;

extern(C++) interface TgCheatManager : CheatManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class PlatformCommon.TgCheatManager")()); }
	private static __gshared TgCheatManager mDefaultProperties;
	@property final static TgCheatManager DefaultProperties() { mixin(MGDPC!(TgCheatManager, "TgCheatManager PlatformCommon.Default__TgCheatManager")()); }
}
