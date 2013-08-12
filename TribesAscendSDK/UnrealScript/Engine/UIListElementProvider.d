module UnrealScript.Engine.UIListElementProvider;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface UIListElementProvider : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIListElementProvider")); }
	private static __gshared UIListElementProvider mDefaultProperties;
	@property final static UIListElementProvider DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIListElementProvider)("UIListElementProvider Engine.Default__UIListElementProvider")); }
}
