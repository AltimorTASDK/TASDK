module UnrealScript.Core.ComponentProperty;

import ScriptClasses;
import UnrealScript.Core.ObjectProperty;

extern(C++) interface ComponentProperty : ObjectProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.ComponentProperty")); }
}
