module UnrealScript.Engine.UIConfigProvider;

import ScriptClasses;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIConfigProvider : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIConfigProvider")); }
	private static __gshared UIConfigProvider mDefaultProperties;
	@property final static UIConfigProvider DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIConfigProvider)("UIConfigProvider Engine.Default__UIConfigProvider")); }
}
