module UnrealScript.Core.BoolProperty;

import ScriptClasses;
import UnrealScript.Core.Property;

extern(C++) interface BoolProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.BoolProperty")); }
	private static __gshared BoolProperty mDefaultProperties;
	@property final static BoolProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(BoolProperty)("BoolProperty Core.Default__BoolProperty")); }
}
