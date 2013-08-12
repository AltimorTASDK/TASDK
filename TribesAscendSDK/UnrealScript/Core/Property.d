module UnrealScript.Core.Property;

import ScriptClasses;
import UnrealScript.Core.Field;

extern(C++) interface Property : Field
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Property")); }
	private static __gshared Property mDefaultProperties;
	@property final static Property DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Property)("Property Core.Default__Property")); }
}
