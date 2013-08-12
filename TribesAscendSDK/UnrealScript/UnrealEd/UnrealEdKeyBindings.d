module UnrealScript.UnrealEd.UnrealEdKeyBindings;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface UnrealEdKeyBindings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.UnrealEdKeyBindings")); }
	private static __gshared UnrealEdKeyBindings mDefaultProperties;
	@property final static UnrealEdKeyBindings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UnrealEdKeyBindings)("UnrealEdKeyBindings UnrealEd.Default__UnrealEdKeyBindings")); }
}
