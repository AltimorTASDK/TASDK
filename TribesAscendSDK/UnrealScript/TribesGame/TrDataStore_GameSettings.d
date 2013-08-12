module UnrealScript.TribesGame.TrDataStore_GameSettings;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_OnlineGameSettings;

extern(C++) interface TrDataStore_GameSettings : UIDataStore_OnlineGameSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDataStore_GameSettings")); }
}
