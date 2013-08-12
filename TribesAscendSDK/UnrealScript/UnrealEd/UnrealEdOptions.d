module UnrealScript.UnrealEd.UnrealEdOptions;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface UnrealEdOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.UnrealEdOptions")); }
	private static __gshared UnrealEdOptions mDefaultProperties;
	@property final static UnrealEdOptions DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UnrealEdOptions)("UnrealEdOptions UnrealEd.Default__UnrealEdOptions")); }
}
