module UnrealScript.Engine.UIDataStore_StringBase;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_StringBase : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_StringBase")); }
	private static __gshared UIDataStore_StringBase mDefaultProperties;
	@property final static UIDataStore_StringBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDataStore_StringBase)("UIDataStore_StringBase Engine.Default__UIDataStore_StringBase")); }
}
