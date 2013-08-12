module UnrealScript.UnrealEd.CascadeConfiguration;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface CascadeConfiguration : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CascadeConfiguration")); }
	private static __gshared CascadeConfiguration mDefaultProperties;
	@property final static CascadeConfiguration DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CascadeConfiguration)("CascadeConfiguration UnrealEd.Default__CascadeConfiguration")); }
}
