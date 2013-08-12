module UnrealScript.Core.Struct;

import ScriptClasses;
import UnrealScript.Core.Field;

extern(C++) interface Struct : Field
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Struct")); }
	private static __gshared Struct mDefaultProperties;
	@property final static Struct DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Struct)("Struct Core.Default__Struct")); }
}
