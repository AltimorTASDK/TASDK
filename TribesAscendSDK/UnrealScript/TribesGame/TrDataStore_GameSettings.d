module UnrealScript.TribesGame.TrDataStore_GameSettings;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_OnlineGameSettings;

extern(C++) interface TrDataStore_GameSettings : UIDataStore_OnlineGameSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDataStore_GameSettings")); }
	private static __gshared TrDataStore_GameSettings mDefaultProperties;
	@property final static TrDataStore_GameSettings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDataStore_GameSettings)("TrDataStore_GameSettings TribesGame.Default__TrDataStore_GameSettings")); }
}
