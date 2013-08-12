module UnrealScript.Core.ObjectProperty;

import ScriptClasses;
import UnrealScript.Core.Property;

extern(C++) interface ObjectProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.ObjectProperty")); }
}
