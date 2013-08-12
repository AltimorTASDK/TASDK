module UnrealScript.Core.IntProperty;

import ScriptClasses;
import UnrealScript.Core.Property;

extern(C++) interface IntProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.IntProperty")); }
	private static __gshared IntProperty mDefaultProperties;
	@property final static IntProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(IntProperty)("IntProperty Core.Default__IntProperty")); }
}
