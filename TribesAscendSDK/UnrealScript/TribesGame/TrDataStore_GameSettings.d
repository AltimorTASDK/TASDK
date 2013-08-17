module UnrealScript.TribesGame.TrDataStore_GameSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_OnlineGameSettings;

extern(C++) interface TrDataStore_GameSettings : UIDataStore_OnlineGameSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDataStore_GameSettings")()); }
	private static __gshared TrDataStore_GameSettings mDefaultProperties;
	@property final static TrDataStore_GameSettings DefaultProperties() { mixin(MGDPC!(TrDataStore_GameSettings, "TrDataStore_GameSettings TribesGame.Default__TrDataStore_GameSettings")()); }
}
