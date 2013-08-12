module UnrealScript.UTGame.UTUIDataProvider_StringArray;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_StringArray;

extern(C++) interface UTUIDataProvider_StringArray : UDKUIDataProvider_StringArray
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_StringArray")); }
}
