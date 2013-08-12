module UnrealScript.Engine.UIDataStore_Fonts;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_Fonts : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_Fonts")); }
	private static __gshared UIDataStore_Fonts mDefaultProperties;
	@property final static UIDataStore_Fonts DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDataStore_Fonts)("UIDataStore_Fonts Engine.Default__UIDataStore_Fonts")); }
}
