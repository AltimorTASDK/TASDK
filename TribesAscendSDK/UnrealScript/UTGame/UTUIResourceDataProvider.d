module UnrealScript.UTGame.UTUIResourceDataProvider;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;

extern(C++) interface UTUIResourceDataProvider : UDKUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIResourceDataProvider")); }
}
