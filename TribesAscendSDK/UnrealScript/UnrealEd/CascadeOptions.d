module UnrealScript.UnrealEd.CascadeOptions;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface CascadeOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CascadeOptions")); }
	private static __gshared CascadeOptions mDefaultProperties;
	@property final static CascadeOptions DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CascadeOptions)("CascadeOptions UnrealEd.Default__CascadeOptions")); }
}
