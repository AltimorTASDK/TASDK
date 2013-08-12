module UnrealScript.Core.MapProperty;

import ScriptClasses;
import UnrealScript.Core.Property;

extern(C++) interface MapProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.MapProperty")); }
	private static __gshared MapProperty mDefaultProperties;
	@property final static MapProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MapProperty)("MapProperty Core.Default__MapProperty")); }
}
