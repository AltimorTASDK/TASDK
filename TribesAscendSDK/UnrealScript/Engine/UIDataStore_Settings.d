module UnrealScript.Engine.UIDataStore_Settings;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_Settings : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_Settings")); }
}
