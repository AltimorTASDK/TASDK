module UnrealScript.Core.FloatProperty;

import ScriptClasses;
import UnrealScript.Core.Property;

extern(C++) interface FloatProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.FloatProperty")); }
}
