module UnrealScript.UTGame.UTDataStore_GameSettingsDM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_OnlineGameSettings;

extern(C++) interface UTDataStore_GameSettingsDM : UIDataStore_OnlineGameSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTDataStore_GameSettingsDM")()); }
	private static __gshared UTDataStore_GameSettingsDM mDefaultProperties;
	@property final static UTDataStore_GameSettingsDM DefaultProperties() { mixin(MGDPC!(UTDataStore_GameSettingsDM, "UTDataStore_GameSettingsDM UTGame.Default__UTDataStore_GameSettingsDM")()); }
}
