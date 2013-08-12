module UnrealScript.Core.DelegateProperty;

import ScriptClasses;
import UnrealScript.Core.Property;

extern(C++) interface DelegateProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.DelegateProperty")); }
	private static __gshared DelegateProperty mDefaultProperties;
	@property final static DelegateProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DelegateProperty)("DelegateProperty Core.Default__DelegateProperty")); }
}
