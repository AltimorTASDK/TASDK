module UnrealScript.UnrealEd.PropertyInputArrayItemBase;

import ScriptClasses;
import UnrealScript.UnrealEd.PropertyInputProxy;

extern(C++) interface PropertyInputArrayItemBase : PropertyInputProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PropertyInputArrayItemBase")); }
}
