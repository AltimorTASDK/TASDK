module UnrealScript.Core.ByteProperty;

import ScriptClasses;
import UnrealScript.Core.Property;

extern(C++) interface ByteProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.ByteProperty")); }
	private static __gshared ByteProperty mDefaultProperties;
	@property final static ByteProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ByteProperty)("ByteProperty Core.Default__ByteProperty")); }
}
