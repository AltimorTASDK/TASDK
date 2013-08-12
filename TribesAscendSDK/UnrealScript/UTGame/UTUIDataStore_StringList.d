module UnrealScript.UTGame.UTUIDataStore_StringList;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataStore_StringList;

extern(C++) interface UTUIDataStore_StringList : UDKUIDataStore_StringList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataStore_StringList")); }
	private static __gshared UTUIDataStore_StringList mDefaultProperties;
	@property final static UTUIDataStore_StringList DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTUIDataStore_StringList)("UTUIDataStore_StringList UTGame.Default__UTUIDataStore_StringList")); }
}
