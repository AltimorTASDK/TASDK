module UnrealScript.Core.StructProperty;

import ScriptClasses;
import UnrealScript.Core.Property;

extern(C++) interface StructProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.StructProperty")); }
}
