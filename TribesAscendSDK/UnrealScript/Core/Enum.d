module UnrealScript.Core.Enum;

import ScriptClasses;
import UnrealScript.Core.Field;

extern(C++) interface Enum : Field
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Enum")); }
	private static __gshared Enum mDefaultProperties;
	@property final static Enum DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Enum)("Enum Core.Default__Enum")); }
}
