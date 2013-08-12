module UnrealScript.UTGame.UTUIDataProvider_SimpleElementProvider;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;

extern(C++) interface UTUIDataProvider_SimpleElementProvider : UDKUIDataProvider_SimpleElementProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_SimpleElementProvider")); }
}
