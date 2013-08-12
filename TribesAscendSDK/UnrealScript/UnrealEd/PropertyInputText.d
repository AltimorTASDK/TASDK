module UnrealScript.UnrealEd.PropertyInputText;

import ScriptClasses;
import UnrealScript.UnrealEd.PropertyInputArrayItemBase;

extern(C++) interface PropertyInputText : PropertyInputArrayItemBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PropertyInputText")); }
}
