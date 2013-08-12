module UnrealScript.Core.Enum;

import ScriptClasses;
import UnrealScript.Core.Field;

extern(C++) interface Enum : Field
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Enum")); }
}
