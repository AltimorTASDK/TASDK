module UnrealScript.Core.InterfaceProperty;

import ScriptClasses;
import UnrealScript.Core.Property;

extern(C++) interface InterfaceProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.InterfaceProperty")); }
	private static __gshared InterfaceProperty mDefaultProperties;
	@property final static InterfaceProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterfaceProperty)("InterfaceProperty Core.Default__InterfaceProperty")); }
}
