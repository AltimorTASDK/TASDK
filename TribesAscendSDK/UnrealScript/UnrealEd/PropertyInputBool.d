module UnrealScript.UnrealEd.PropertyInputBool;

import ScriptClasses;
import UnrealScript.UnrealEd.PropertyInputArrayItemBase;

extern(C++) interface PropertyInputBool : PropertyInputArrayItemBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PropertyInputBool")); }
}
