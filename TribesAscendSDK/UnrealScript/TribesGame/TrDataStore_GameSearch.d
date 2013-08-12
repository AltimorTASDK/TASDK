module UnrealScript.TribesGame.TrDataStore_GameSearch;

import ScriptClasses;
import UnrealScript.UTGame.UTDataStore_GameSearchDM;

extern(C++) interface TrDataStore_GameSearch : UTDataStore_GameSearchDM
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDataStore_GameSearch")); }
}
