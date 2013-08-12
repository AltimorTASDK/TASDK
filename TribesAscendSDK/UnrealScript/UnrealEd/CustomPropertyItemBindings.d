module UnrealScript.UnrealEd.CustomPropertyItemBindings;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface CustomPropertyItemBindings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CustomPropertyItemBindings")); }
	private static __gshared CustomPropertyItemBindings mDefaultProperties;
	@property final static CustomPropertyItemBindings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CustomPropertyItemBindings)("CustomPropertyItemBindings UnrealEd.Default__CustomPropertyItemBindings")); }
}
