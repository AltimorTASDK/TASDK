module UnrealScript.UnrealEd.PropertyInputEditInline;

import ScriptClasses;
import UnrealScript.UnrealEd.PropertyInputArrayItemBase;

extern(C++) interface PropertyInputEditInline : PropertyInputArrayItemBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PropertyInputEditInline")); }
}
