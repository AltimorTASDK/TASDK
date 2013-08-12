module UnrealScript.UTGame.UTUIDataProvider_SearchResult;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_SearchResult;

extern(C++) interface UTUIDataProvider_SearchResult : UDKUIDataProvider_SearchResult
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_SearchResult")); }
}
