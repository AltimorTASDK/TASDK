module UnrealScript.Engine.CustomPropertyItemHandler;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface CustomPropertyItemHandler : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CustomPropertyItemHandler")); }
	private static __gshared CustomPropertyItemHandler mDefaultProperties;
	@property final static CustomPropertyItemHandler DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CustomPropertyItemHandler)("CustomPropertyItemHandler Engine.Default__CustomPropertyItemHandler")); }
}
