module UnrealScript.UnrealEd.UnrealEdTypes;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface UnrealEdTypes : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.UnrealEdTypes")); }
	private static __gshared UnrealEdTypes mDefaultProperties;
	@property final static UnrealEdTypes DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UnrealEdTypes)("UnrealEdTypes UnrealEd.Default__UnrealEdTypes")); }
}
