module UnrealScript.Core.StrProperty;

import ScriptClasses;
import UnrealScript.Core.Property;

extern(C++) interface StrProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.StrProperty")); }
}
