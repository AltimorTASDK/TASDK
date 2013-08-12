module UnrealScript.PlatformCommon.TgCheatManager;

import ScriptClasses;
import UnrealScript.Engine.CheatManager;

extern(C++) interface TgCheatManager : CheatManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class PlatformCommon.TgCheatManager")); }
	private static __gshared TgCheatManager mDefaultProperties;
	@property final static TgCheatManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TgCheatManager)("TgCheatManager PlatformCommon.Default__TgCheatManager")); }
}
